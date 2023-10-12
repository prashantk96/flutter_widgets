import 'package:flutter/material.dart';

class GridViewBuiderTest extends StatefulWidget {
  const GridViewBuiderTest({super.key});

  @override
  State<GridViewBuiderTest> createState() => _GridViewBuiderTestState();
}

class _GridViewBuiderTestState extends State<GridViewBuiderTest> {
  // ignore: non_constant_identifier_names
  List Images = [
    "https://webneel.com/wallpaper/sites/default/files/images/08-2018/3-nature-wallpaper-mountain.1366.jpg",
    "https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg",
    "https://webneel.com/wallpaper/sites/default/files/images/01-2014/20-flower-wallpaper.1366.jpg",
    "https://img.freepik.com/free-photo/erawan-waterfall-autumn-thailand-beautiful-waterfall-with-emerald-pool-nature_335224-777.jpg",
    "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
    "https://img.freepik.com/free-photo/digital-lavender-natural-landscape_23-2150538378.jpg",
    "https://img.freepik.com/free-photo/beautiful-waterfall-landscape_23-2150526263.jpg",
    "https://img.freepik.com/free-photo/nature-tranquil-beauty-reflected-calm-water-generative-ai_188544-12798.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Images')),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: Images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(1),
              child: Container(
                  child: Image.network(
                Images[index],
                fit: BoxFit.cover,
              )),
            );
          }),
    );
  }
}
