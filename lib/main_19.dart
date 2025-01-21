import 'package:flutter/material.dart';

void main() {
  /**
  *
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('column的嵌套错误'),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Text('111'),
          Text('222'),
          // 错误的嵌套
          // Container(
          //   height: double.maxFinite,
          //   color: Colors.yellow,
          //   child: Column(children: [
          //     Text('333'),
          //     Text('444'),
          //     // 分配剩余空间失败，因为找不到剩余空间
          //     Expanded(child: Text('555'))
          //   ]),
          // ),
          // 正确的嵌套
          Expanded(
            child: Container(
              height: double.maxFinite,
              color: Colors.yellow,
              child: Column(children: [
                Text('333'),
                Text('444'),
                // 分配剩余空间失败，因为找不到剩余空间
                Expanded(child: Text('555'))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
