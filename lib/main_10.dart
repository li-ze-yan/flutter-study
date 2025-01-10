import 'package:flutter/material.dart';

main() {
  /**
   * Container 设置尺寸和背景颜色，以及子元素的对齐方式
   */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("生命周期"),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    print('initState 初始化');
  }

  @override
  Widget build(Object context) {
    print('build 构建');
    // 默认撑满最大的尺寸
    return Container(
      // width: 100,
      // width: double.maxFinite,
      // height: 100,
      // height: double.maxFinite,
      // alignment: Alignment.center,
      alignment: Alignment.bottomLeft,
      color: Colors.red,
      child: Text(
        'fuck',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40, color: Colors.white, backgroundColor: Colors.blue),
      ),
    );
  }
}
