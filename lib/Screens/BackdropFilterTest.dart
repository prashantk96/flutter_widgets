import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widget/Screens/StackTest.dart';

class BackdropFilterTest extends StatefulWidget {
  const BackdropFilterTest({super.key});

  @override
  State<BackdropFilterTest> createState() => _BackdropFilterTestState();
}

class _BackdropFilterTestState extends State<BackdropFilterTest> {
  void showAlertDialog() {
    showDialog(
        context: context,
        barrierColor: Colors.white.withOpacity(0.1),
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: AlertDialog(
              title: const Text('hiiii'),
              content: const Text('Hi There Are you Having Fun??'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BackdropFilter'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 200,
            ),
            Container(
                child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const StackTest();
                      }),
                    );
                  },
                  child: const Text('StackTest')),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlertDialog();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
