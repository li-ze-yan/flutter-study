import 'package:flutter/material.dart';

void main() {
  /**
  * Row的嵌套错误
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Row的嵌套错误'),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 错误的嵌套
    // return Container(
    //   color: Colors.green,
    //   child: Row(
    //     children: [
    //       Text('123'),
    //       Text('abc'),
    //       Container(
    //         color: Colors.red,
    //         child: Row(
    //           children: [Text('789'), Expanded(child: Text('haha'))],
    //         ),
    //       )
    //     ],
    //   ),
    // );
    // 正确的嵌套
    return Container(
      color: Colors.green,
      child: Row(
        children: [
          Text('123'),
          Text('abc'),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Row(
                children: [Text('789'), Expanded(child: Text('haha'))],
              ),
            ),
          )
        ],
      ),
    );
  }
}
