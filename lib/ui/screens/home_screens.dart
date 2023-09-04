import 'package:flutter/material.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // final List<Map<String, dynamic>> items = [
  //   {
  //     'title': 'Item 1',
  //     'body': 'This is the body of item 1',
  //     'author': 'John Doe',
  //     'date': '2023-09-04',
  //     'isSelected': false,
  //   },
  //   {
  //     'title': 'Item 2',
  //     'body': 'This is the body of item 2',
  //     'author': 'Jane Smith',
  //     'date': '2023-09-05',
  //     'isSelected': false,
  //   },
  //   // Add more items here...
  // ];

  // final List<Map<String, dynamic>> labels = [
  //   {
  //     'title': 'Label 1',
  //     'isSelected': false,
  //   },
  //   {
  //     'title': 'Label 2',
  //     'isSelected': false,
  //   },
  //   // Add more items here...
  // ];

  // bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title),
        ),
        body: ListView.builder(
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
                      // SizedBox(
                      //   width: size.width,
                      //   height: 100,
                      //   child: ListView.builder(
                      //       itemCount: dummyRepoIssues.where((element) => element.labels != null && element.labels.length > 0)?.length ?? 0,
                      //       itemBuilder: (BuildContext context, int index) {
                      //       final label = dummyRepoIssues.where((element) => element.labels != null && element.labels.length > 0)[index] as Label;
                      //
                      //         return Row(
                      //           children: [
                      //             SizedBox(width: 8,),
                      //             // Chip(label: Text('Chip $index'), onDeleted: () {}, backgroundColor: Colors.lightBlue,),
                      //             InputChip(
                      //                 label: Text(label.name),
                      //               onSelected: (bool newValue) {
                      //                 setState(() {
                      //                   label.isSelected = !label.isSelected;
                      //                 });
                      //               },
                      //               selected: label.isSelected,
                      //               selectedColor: Colors.lightBlue,
                      //               onDeleted: () {
                      //
                      //               },
                      //             )
                      //           ],
                      //         );
                      //       },
                      //       scrollDirection: Axis.horizontal),
                      // )
                    ],
                  )),
            );
          },
        ));
  }
}
