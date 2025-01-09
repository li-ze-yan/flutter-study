import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
      home: Row(
    children: [Text('777'), Spacer(), MyApp()],
  )));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  // 热启动会刷新 build 方法里面的内容，不在 build 方法里面的内容不会被刷新
  // build 方法会把里面的内容一层一层的向上返回，并且更新到屏幕上
  @override
  Widget build(BuildContext context) {
    print(context);
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text('$count'))
      ],
    );
  }
}
