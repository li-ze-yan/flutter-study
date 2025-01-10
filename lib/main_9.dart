import 'package:flutter/material.dart';

main() {
  /**
   * 生命周期
   * 对于StatefulWidget，其状态类（如_HomePageState）包含多个生命周期方法：
   * 
   * initState(): 当状态对象被插入到 widget 树中时调用。这是初始化状态的好地方
   * didChangeDependencies(): 在依赖关系改变时调用，例如 InheritedWidget 更新后
   * build(BuildContext context): 构建 UI 的方法，每当需要重新绘制界面时都会调用
   * didUpdateWidget(OldWidget oldWidget): 当 widget 重建并且新旧 widget 不相等时调用
   * deactivate(): 当状态从树中移除但可能重新插入时调用
   * dispose(): 状态即将被永久移除时调用，用于释放资源
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
    return Text('abc');
  }
}

class StatelessHomePage extends StatelessWidget {
  const StatelessHomePage({super.key});

  // 无状态组件不存在生命周期
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Text('bdc');
  }
}
