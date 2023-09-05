import 'package:flutter/material.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Set<String> selectedTags = Set();

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
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
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
                          label: Text(tag),
                          deleteIcon: Icon(Icons.cancel),
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
                    margin: EdgeInsets.all(8.0),
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
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        repoIssue.title ?? "",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        repoIssue.body ?? "",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                            color: Colors.grey),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                // Right Side
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                        repoIssue.createdAt ?? "",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                            color: Colors.grey)
                                    ),
                                    Text(
                                        repoIssue.user?.login ?? "",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                            color: Colors.grey)
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            (dummyRepoIssues[index].labels != null)?
                            SizedBox(
                              width: size.width,
                              height: 100,
                              child: ListView.builder(
                                  itemCount: dummyRepoIssues[index].labels!.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    final label = dummyRepoIssues[index].labels![i];

                                    return Row(
                                      children: [
                                        SizedBox(width: 8,),
                                        // Chip(label: Text('Chip $index'), onDeleted: () {}, backgroundColor: Colors.lightBlue,),
                                        InputChip(
                                          label: Text(label.name?? ""),
                                          onSelected: (bool newValue) {
                                            setState(() {
                                              label.isSelected = !label.isSelected;
                                              selectedTags.addAll(repoIssue.labels!.where((element) => element.isSelected == true).map((e) => e.name!).toSet());
                                            });
                                          },
                                          selected: label.isSelected,
                                          selectedColor: Colors.lightBlue,
                                          // onDeleted: () {
                                          //
                                          // },
                                        )
                                      ],
                                    );
                                  },
                                  scrollDirection: Axis.horizontal),
                            )
                                :
                            Container()

                          ],
                        )),
                  );
                },
              ),
            )
          ],
        )
    );
  }
}
