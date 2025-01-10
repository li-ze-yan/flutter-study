import 'package:flutter/material.dart';

main() {
  /**
   * 行和列
   * 对齐方式
   */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Expanded和Column练习'),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(Object context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Spacer(),
              Container(
                // width: double.infinity,
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              // Spacer()
            ],
          ),
          // Expanded(
          //     // flex: 1, // 默认是1
          //     child: Container(
          //   color: Colors.red,
          //   width: 50,
          //   // height: 50, // Expanded会自动填充剩余空间，所以不需要height
          // )),
          // Expanded 不改变交叉轴
          Expanded(
              child: Container(
            color: Colors.pink,
            child: Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.yellow,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.black,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                width: 80,
                child: Text(
                  'abc',
                  style: TextStyle(fontSize: 40),
                ),
                // height: 50, // Expanded会自动填充剩余空间，所以不需要height
              ))
        ],
      ),
    );
  }
}
