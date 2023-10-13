// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/Screens/BackdropFilterTest.dart';

class StatefulBuilderTest extends StatefulWidget {
  const StatefulBuilderTest({super.key});

  @override
  State<StatefulBuilderTest> createState() => _StatefulBuilderTestState();
}

class _StatefulBuilderTestState extends State<StatefulBuilderTest> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: SafeArea(child: Center(
        child: StatefulBuilder(
          builder: (BuildContext context, internalState) {
            return Column(
              children: [
                Center(
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height - 200,
                    child: Expanded(
                      child: CupertinoButton(
                        child: Text(
                          counter.toString(),
                          style: const TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurpleAccent),
                        ),
                        onPressed: () {
                          internalState(() {
                            counter++;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      internalState(() {
                        counter = 0;
                      });
                    },
                    child: const Text('Reset'))
              ],
            );
          },
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const BackdropFilterTest();
              }));
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_left),
              label: ('ListViewSep'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_right_alt_outlined),
                label: ('BackdropFilterTest')),
          ]),
    );
  }
}
