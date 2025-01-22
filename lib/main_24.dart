import 'package:flutter/material.dart';

void main() {
  /**
  *
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Center WidthFactor HeightFactor'),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      // height: 300,
      color: Colors.yellow,
      child: Center(
        widthFactor: 2,
        heightFactor: 2,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
