import 'package:flutter/material.dart';

main() {
  /**
   * 当Container设置对齐方式的时候，内部的子项将不再与父级的尺寸一致，而是以Container的尺寸为基准进行对齐。
   * 当子项有了自己的尺寸，父级将视为没有child，将无限延伸到最大
   */
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: Text('Align Container 组合')),
    body: HomePage(),
  )));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.blue,
    //   alignment: Alignment.center,
    //   child: Container(
    //     width: 300,
    //     height: 300,
    //     color: Colors.red,
    //     alignment: Alignment.center,
    //     child: Container(
    //       width: 100,
    //       height: 100,
    //       color: Colors.green,
    //     ),
    //   ),
    // );
    return Container(
      width: 100,
      color: Colors.green,
      child: Align(
        // alignment: Alignment.topRight,
        // Alignment(1, 1) 1 是最大值 -1 是最小值 0 是居中
        // alignment: Alignment(1, 1),
        alignment: Alignment(-1, -1),
        // alignment: Alignment(0, 0),
        child: const Text('abc'),
      ),
    );
  }
}
