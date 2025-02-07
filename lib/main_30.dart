import 'package:flutter/material.dart';

void main() {
  /**
  *
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Global Key'),
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
      color: Colors.green,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text('abc'),
          Container(
            color: Colors.red,
            child: Text('123'),
          ),
          Divider(
            height: 30,
            color: Colors.black12,
          ),
          Container(
            color: Colors.red,
            child: Text('123'),
          ),
          Container(
            child: Icon(Icons.add),
          ),
          FlutterLogo()
        ],
      ),
    );
  }
}
