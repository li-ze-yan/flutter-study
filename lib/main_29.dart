import 'package:flutter/material.dart';

void main() {
  /**
  *
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
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
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
      alignment: Alignment.center,
      child: Row(
        children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   alignment: Alignment.center,
          //   child: Placeholder(
          //     fallbackWidth: 50,
          //     fallbackHeight: 50,
          //   ),
          // ),
          Placeholder(
            fallbackWidth: 50,
            fallbackHeight: 50,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.yellow),
          )
        ],
      ),
      // child: Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.blue,
      //   child: Placeholder(
      //     fallbackWidth: 50,
      //     fallbackHeight: 50,
      //   ),
      // ),
    );
  }
}
