import 'package:flutter/material.dart';

void main() {
  /**
  *
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('row 文字水平方向 column 的垂直方向'),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   textDirection: TextDirection.rtl,
    //   children: [FlutterLogo(), Text('abc'), Text('123'), Icon(Icons.sunny)],
    // );
    return Column(
      // textDirection: TextDirection.ltr, // 没有作用
      verticalDirection: VerticalDirection.down, // 默认向下
      // verticalDirection: VerticalDirection.up,
      children: [FlutterLogo(), Text('abc'), Text('123'), Icon(Icons.sunny)],
    );
  }
}
