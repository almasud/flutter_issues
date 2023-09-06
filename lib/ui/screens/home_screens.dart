import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';
import 'package:flutter_issues/utils/extensions.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Set<Label> selectedTags = {};

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
                      context.read<HomeBloc>().add(
                          FetchIssuesFromRemoteByLabels(
                              currentPage: 1,
                              labels:
                                  selectedTags.map((e) => e.name!).toList()));
                    },
                  ),
                  Expanded(
                    child: Wrap(
                      spacing: 8.0, // Horizontal
                      runSpacing: -2.0, // Vertical
                      children: selectedTags.map((tag) {
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
                              selectedTags.remove(tag);
                              context.read<HomeBloc>().add(
                                  FetchIssuesFromRemoteByLabels(
                                      currentPage: 1,
                                      labels: selectedTags
                                          .map((e) => e.name!)
                                          .toList()));
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Expanded(
                  child: (state.uiStatus == HomeUiStatus.success &&
                          state.repoIssues != null)
                      ? ListView.builder(
                          itemCount: state.repoIssues!.length,
                          itemBuilder: (BuildContext context, int index) {
                            final repoIssue = state.repoIssues![index];

                            return Card(
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
                                              repoIssue.title ?? "",
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
                                                    repoIssue.createdAt
                                                            ?.dateTimeFormat(
                                                                "MM/dd/yyyy") ??
                                                        "",
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16.0,
                                                        color: Colors.grey)),
                                                Text(
                                                  repoIssue.user?.login
                                                          ?.toUpperCase() ??
                                                      "",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
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
                                        repoIssue.body ?? "",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                            color: Colors.grey),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      (state.repoIssues![index].labels != null)
                                          ? SizedBox(
                                              width: size.width,
                                              child: Wrap(
                                                spacing: 8.0, // Horizontal
                                                runSpacing: 8.0, // Vertical
                                                children: state
                                                    .repoIssues![index].labels!
                                                    .map((label) {
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
                                                        selectedTags.add(label);
                                                        context.read<HomeBloc>().add(
                                                            FetchIssuesFromRemoteByLabels(
                                                                currentPage: 1,
                                                                labels: selectedTags
                                                                    .map((e) =>
                                                                        e.name!)
                                                                    .toList()));
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
                            );
                          },
                        )
                      : (state.uiStatus == HomeUiStatus.failed)
                          ? Center(
                              child: Text(
                                state.message ?? "Failed to load the items!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.red.withOpacity(0.9),
                                    fontSize: 16.0),
                              ),
                            )
                          : const Center(
                              child: CircularProgressIndicator(),
                            ),
                );
              },
            )
          ],
        ));
  }
}
