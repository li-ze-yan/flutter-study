import 'package:flutter/material.dart';

main() {
  // 下面的规则 全是在脚手架里面的scaffold里面的
  /**
   * Container 容器
   * 1. 填充包围子项
   * 2. 如果宽度高度设置了值，就当作约束条件，改变包围的大小，比如设置了width: 100 , 那么宽度就是 100
   * 
   * 容器首先用内边距 padding 包围 child
   * 在绘制过程中，容器应用给定的变换 transform 属性
   * 然后绘制背景装饰 decoration
   * 然后绘制前景装饰 foregroundDecoration
   * 
   * 没有子项的容器会尽可能的变大
   * 嵌套 Container 的大小尺寸，约束的优先级，外层的大于里层的，父级 > child
   * 如果父级没有约束，才尽可能的根据子项的约束条件来确定尺寸
   * 
   * 如果有对齐方式，例如居中，居左，而且父级没有约束，那么就最大化，不取子控件的尺寸
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.red,
          height: 60,
          child: const Text('HomePage'),
        ),
      ),
      body: HomePage(),
    ),
  ));

  // 不使用脚手架
  // runApp(MaterialApp(
  //   home: HomePage(),
  // ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(Object context) {
    double height = 100;
    // Container color 和 decoration 不能同时设置
    /**
     * decoration 的作用
     * 主要用于为小部件添加装饰效果，如背景颜色、背景图片、边框、圆角等
     */
    // return Container(
    //   color: Colors.yellow,
    // );
    return Container(
      width: 100,
      height: height,
      // 背景装饰
      decoration: BoxDecoration(
        color: Colors.red,
        // borderRadius: BorderRadius.circular(height / 3),
      ),
      // 前景装饰
      foregroundDecoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(height / 4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'abc',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
