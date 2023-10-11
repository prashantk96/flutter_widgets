import 'package:flutter/material.dart';

class ListViewSeperatedTest extends StatefulWidget {
  const ListViewSeperatedTest({super.key});

  @override
  State<ListViewSeperatedTest> createState() => _ListViewSeperatedTestState();
}

class _ListViewSeperatedTestState extends State<ListViewSeperatedTest> {
  List Contacts = [
    "Sadashiv Ram",
    "Adanand Khire",
    "RamaKant wadav",
    "Jaydev Sahani",
    "Pual Walker",
    "Namrata nagdev",
    "Samesh Junagad",
    "Jamtara Wangdu",
    "Kailash Wadne",
    "Mahesh Sachdev",
    "Gaanesh Ramkhot",
    "Sadashiv Ram",
    "Adanand Khire",
    "RamaKant wadav",
    "Jaydev Sahani",
    "Pual Walker",
    "Namrata nagdev",
    "Samesh Junagad",
    "Jamtara Wangdu",
    "Kailash Wadne",
    "Mahesh Sachdev",
    "Gaanesh Ramkhot",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: SafeArea(
          child: Container(
        child: ListView.separated(
            itemCount: Contacts.length,
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(Contacts[index].toString()[0]),
                ),
                title: Text(Contacts[index]),
                trailing: Icon(Icons.call),
              );
            }),
      )),
    );
  }
}
