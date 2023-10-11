import 'package:flutter/material.dart';
import 'package:flutter_widget/Screens/ListeviewSaperatedTest.dart';

class ListViewBuilderTest extends StatefulWidget {
  const ListViewBuilderTest({super.key});

  @override
  State<ListViewBuilderTest> createState() => _ListViewBuilderTestState();
}

class _ListViewBuilderTestState extends State<ListViewBuilderTest> {
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: Contacts.length,
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
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const ListViewSeperatedTest();
                      }),
                    );
                  },
                  child: const Text('ListViewSeperatedTest')),
            )
          ],
        ),
      ),
    );
  }
}
