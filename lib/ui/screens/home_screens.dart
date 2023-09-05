import 'package:flutter/material.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';
import 'package:flutter_issues/utils/extensions.dart';

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
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Perform the search action here
                    },
                  ),
                  Expanded(
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: -8.0,
                      children: selectedTags.map((tag) {
                        return Chip(
                          label: Text(tag.name ?? ""),
                          deleteIcon: const Icon(Icons.cancel),
                          onDeleted: () {
                            setState(() {
                              selectedTags.remove(tag);
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dummyRepoIssues.length,
                itemBuilder: (BuildContext context, int index) {
                  final repoIssue = dummyRepoIssues[index];

                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                          repoIssue.createdAt?.dateTimeFormat(
                                                  "MM/dd/yyyy") ??
                                              "",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Colors.grey)),
                                      Text(
                                        repoIssue.user?.login?.toUpperCase() ??
                                            "",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.grey,
                                        ),
                                        textAlign: TextAlign.end,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
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
                            (dummyRepoIssues[index].labels != null)
                                ? SizedBox(
                                    width: size.width,
                                    child: Wrap(
                                      spacing: 8.0, // Horizontal
                                      runSpacing: 8.0, // Vertical
                                      children: dummyRepoIssues[index]
                                          .labels!
                                          .map((label) {
                                        return InputChip(
                                          label: Text(label.name ?? ""),
                                          onSelected: (bool newValue) {
                                            setState(() {
                                              selectedTags.add(label);
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
              ),
            )
          ],
        ));
  }
}
