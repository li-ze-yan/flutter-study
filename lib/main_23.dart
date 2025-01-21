import 'package:flutter/material.dart';

void main() {
  /**
  *
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('标题栏'),
        // leading: Icon(Icons.menu),
      ),
      body: HomePage(),
      drawer: Container(
        // width: double.maxFinite,
        // height: double.maxFinite,
        color: Colors.red,
        // child: Text('abc'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.upcoming),
      ),
      // resizeToAvoidBottomInset: false, // 默认为true，当键盘弹出时，页面会自动上移，当键盘收起时，页面会自动下移
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tc1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 1000,
    //   height: 1000,
    //   color: Colors.green,
    //   alignment: Alignment.bottomCenter,
    //   child: TextField(
    //     controller: tc1,
    //     onChanged: (value) {
    //       print(value);
    //       print('tc1.text=${tc1.text}');
    //     },
    //     decoration: InputDecoration(hintText: '请输入内容'),
    //   ),
    // );

    // // 居中显示，可以放到Center中
    // return Center(
    //   child: Text('abc'),
    // );

    // 当body中的子控件有自己的尺寸的时候，body取子控件的尺寸，并且左上角对齐
    // return Text('abc');
    return Container(
      color: Colors.yellow,
      // 对齐方式存在父控件撑到最大
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Text('abc'),
          Text('def'),
          Text('ghi'),
        ],
      ),
    );
  }
}
