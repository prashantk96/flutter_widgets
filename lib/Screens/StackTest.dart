// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class StackTest extends StatefulWidget {
  const StackTest({super.key});

  @override
  State<StackTest> createState() => _StackTestState();
}

class _StackTestState extends State<StackTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              "https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg",
              fit: BoxFit.fill,
            ),
            Container(
                child: const Center(
              child: Text(
                "Welcome to India",
                style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
