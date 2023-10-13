import 'package:flutter/material.dart';
import 'package:flutter_widget/Screens/GridviewBuiderTest.dart';

class ListViewSeperatedTest extends StatefulWidget {
  const ListViewSeperatedTest({super.key});

  @override
  State<ListViewSeperatedTest> createState() => _ListViewSeperatedTestState();
}

class _ListViewSeperatedTestState extends State<ListViewSeperatedTest> {
  // ignore: non_constant_identifier_names
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
          child: Column(children: [
        Expanded(
          child: Container(
            child: RefreshIndicator(
              onRefresh: () async {
                setState(() {
                  Contacts.add('New Contact');
                });
              },
              child: ListView.separated(
                  itemCount: Contacts.length,
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(Contacts[index].toString()[0]),
                      ),
                      title: Text(Contacts[index]),
                      trailing: const Icon(Icons.call),
                    );
                  }),
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const GridViewBuiderTest();
                  }),
                );
              },
              child: const Text('GridviewBuilderTest')),
        )
      ])),
    );
  }
}
