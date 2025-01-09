import 'package:flutter/material.dart';

main() {
  /**
   * 无状态组件 StatelessWidget
   */
  runApp(MaterialApp(
    home: Column(
      children: [Text('000'), Widget1(), Widget2(), Widget3()],
    ),
  ));
}

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('我是无状态组件1');
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('我是无状态组件2');
  }
}

class Widget3 extends StatelessWidget {
  const Widget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('我是无状态组件3');
  }
}
