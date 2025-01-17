import 'package:flutter/material.dart';

void main() {
/**
   * 主轴和交叉轴的尺寸
   * mainAxisSize: MainAxisSize.max, 这个是默认值
   * mainAxisSize: MainAxisSize.min, 主轴最小值
   *
   * 交叉轴没有尺寸这个属性，所以永远取子控件中最大的值作为交叉轴的值
   */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('主轴和交叉轴的尺寸'),
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
      // width: 300,
      height: 300,
      color: Colors.green,
      // alignment: Alignment.center,
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.stretch, // 没有设置取最大
        children: [
          Text('abc'),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 150,
            height: 120,
            color: Colors.red,
          ),
          // 包含 flex 的子组件，会自动填充剩余空间
          Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
