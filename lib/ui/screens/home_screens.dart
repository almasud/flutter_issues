import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issues/data/di/app_component.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';
import 'package:flutter_issues/utils/constants.dart';
import 'package:flutter_issues/utils/extensions.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final Set<Label> _selectedTags = {};
  final _homeBloc = getIt<HomeBloc>();
  int _currentPage = 0;

  // Initialize page controller
  final PagingController<int, RepoIssue> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();

    _pagingController.addPageRequestListener(
      (pageKey) {
        _currentPage = pageKey;
        debugPrint(
            "initState: _currentPage: $_currentPage and pageKey: $pageKey");

        _homeBloc.add(
            FetchIssuesFromRemote(
                currentPage: _currentPage,
                labels:
                _selectedTags.map((e) => e.name!).toList()));
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _homeBloc.close();
    _pagingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.lightBlueAccent,
                    ),
                    onPressed: () {
                      // Perform the search action here
                      _updateSearch();
                    },
                  ),
                  Expanded(
                    child: Wrap(
                      spacing: 8.0, // Horizontal
                      runSpacing: -2.0, // Vertical
                      children: _selectedTags.map((tag) {
                        return Chip(
                          label: Text(tag.name?.toUpperCase() ?? ""),
                          labelStyle: const TextStyle(
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold),
                          backgroundColor:
                              Colors.lightBlueAccent.withOpacity(.2),
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          deleteIcon: const Icon(Icons.cancel),
                          onDeleted: () {
                            setState(() {
                              _selectedTags.remove(tag);
                              _updateSearch();
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            BlocProvider(
              create: (context) => _homeBloc,
              child: BlocListener<HomeBloc, HomeState>(
                listener: (context, state) {
                  if (state.uiStatus == HomeUiStatus.success &&
                      state.repoIssues != null) {
                    final repoIssues = state.repoIssues!;

                    final isLastPage =
                        repoIssues.length < Constants.itemPerPage;
                    if (isLastPage) {
                      _pagingController.appendLastPage(repoIssues);
                    } else {
                      final nextPageKey = 1 + repoIssues.length;
                      _pagingController.appendPage(repoIssues, nextPageKey);
                    }
                  } else if (state.uiStatus == HomeUiStatus.failed) {
                    debugPrint("HomeScreen failed: ${state.message}");
                    _pagingController.error = state.message;
                  }
                },
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return Expanded(
                        child:
                            // (state.uiStatus == HomeUiStatus.success &&
                            //         state.repoIssues != null)?
                            PagedListView<int, RepoIssue>(
                      pagingController: _pagingController,
                      builderDelegate: PagedChildBuilderDelegate<RepoIssue>(
                          itemBuilder: (context, item, index) => Card(
                                margin: const EdgeInsets.all(8.0),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Left Side
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                item.title ?? "",
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.0,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 16.0,
                                            ),
                                            // Right Side
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                      item.createdAt
                                                              ?.dateTimeFormat(
                                                                  "MM/dd/yyyy") ??
                                                          "",
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16.0,
                                                          color: Colors.grey)),
                                                  Text(
                                                    item.user?.login
                                                            ?.toUpperCase() ??
                                                        "",
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16.0,
                                                      color: Colors.grey,
                                                    ),
                                                    textAlign: TextAlign.end,
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          item.body ?? "",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Colors.grey),
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        (item.labels != null)
                                            ? SizedBox(
                                                width: size.width,
                                                child: Wrap(
                                                  spacing: 8.0, // Horizontal
                                                  runSpacing: 8.0, // Vertical
                                                  children:
                                                      item.labels!.map((label) {
                                                    return InputChip(
                                                      label: Text(label.name
                                                              ?.toUpperCase() ??
                                                          ""),
                                                      labelStyle: const TextStyle(
                                                          color: Colors
                                                              .lightBlueAccent,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      backgroundColor: Colors
                                                          .lightBlueAccent
                                                          .withOpacity(.2),
                                                      side: BorderSide.none,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25)),
                                                      onSelected:
                                                          (bool newValue) {
                                                        setState(() {
                                                          _selectedTags.add(label);
                                                          _updateSearch();
                                                        });
                                                      },
                                                      // selected: label.isSelected,
                                                      // selectedColor: Colors.lightBlue,
                                                    );
                                                  }).toList(),
                                                ),
                                              )
                                            : Container()
                                      ],
                                    )),
                              )),
                    )
                        // : (state.uiStatus == HomeUiStatus.failed)
                        //     ? Center(
                        //         child: Text(
                        //           state.message ??
                        //               "Failed to load the items!",
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //               color: Colors.red.withOpacity(0.9),
                        //               fontSize: 16.0),
                        //         ),
                        //       )
                        //     : const Center(
                        //         child: CircularProgressIndicator(),
                        //       ),
                        );
                  },
                ),
              ),
            )
          ],
        ));
  }

  void _updateSearch() {
    debugPrint("_updateSearchTerm is called");

    _pagingController.refresh();
  }
}
