import 'package:flutter/material.dart';

main() {
  /**
   * 行和列
   * 对齐方式
   */
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Container(
          height: 200,
          color: Colors.green,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch, // 拉伸
              // crossAxisAlignment: CrossAxisAlignment.center, // 默认是 center
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Expanded(
                  child: Text(
                    'abc=',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Text(
                    'abc=',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'abc=',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ])),
    );
    // mainAxisAlignment 主轴对齐方式
  }
}
