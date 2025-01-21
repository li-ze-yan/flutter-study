import 'package:flutter/material.dart';

void main() {
  /**
  *
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
  var key1 = GlobalKey();
  var key2 = GlobalKey();
  var key3 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[
      Box(
        key: key1,
        count: 0,
        color: Colors.red,
      ),
      Box(
        key: key2,
        count: 0,
        color: Colors.yellow,
      ),
      Box(
        key: key3,
        count: 0,
        color: Colors.blue,
      )
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Key'),
      ),
      body: Column(
        children: list,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var box1Widget = key1.currentWidget as Box;
          box1Widget.count += 100;
          var box1State = key1.currentState as _BoxState;
          box1State.count += 100;
          box1State.setState(() {});
          // setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Box extends StatefulWidget {
  int count;
  Color color;

  Box({
    super.key,
    required this.count,
    required this.color,
  });

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: widget.color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('widget.count=${widget.count} state.count=$count'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.count++;
                    count++;
                  });
                },
                child: Text('点我'))
          ],
        ));
  }
}
