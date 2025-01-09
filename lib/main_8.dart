import 'package:flutter/material.dart';

main() {
  /**
   * build 可以嵌套
   */
  runApp(MaterialApp(
    home: Widget1(),
  ));
}

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('000'), Text('111'), Widget2()],
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('222'), Widget3()],
    );
  }
}

class Widget3 extends StatefulWidget {
  const Widget3({super.key});

  @override
  State<StatefulWidget> createState() => _Widget3State();
}

class _Widget3State extends State<Widget3> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('333'),
        ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
              print('$count');
            },
            child: Text('$count'))
      ],
    );
  }
}
