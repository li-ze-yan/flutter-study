import 'package:flutter/material.dart';

void main() {
  /**
  * Local key
  */
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var list = [
    Box1(
      key: Key('1'),
      count: 0,
      color: Colors.yellow,
    ),
    Box1(
      key: UniqueKey(),
      count: 0,
      color: Colors.red,
    ),
    Box1(
      key: Key('3'),
      count: 0,
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local key'),
      ),
      body: Column(
        children: list,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.shuffle(); // 给队列随机排序
            // list.add(Box1(key: UniqueKey(), count: 0, color: Colors.green));
            // list.insert(
            //     0, Box1(key: UniqueKey(), count: 0, color: Colors.green));
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class Box1 extends StatefulWidget {
  int count;
  Color color;

  Box1({super.key, required this.count, required this.color});

  @override
  State<Box1> createState() => _Box1State();
}

class _Box1State extends State<Box1> {
  int count = 100;
  @override
  Widget build(BuildContext context) {
    print('box1 build');
    return Container(
      height: 100,
      color: widget.color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'widget.count=${widget.count} state.count=$count',
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.count++;
                  count++;
                });
              },
              child: Text('点我'))
        ],
      ),
    );
  }
}
