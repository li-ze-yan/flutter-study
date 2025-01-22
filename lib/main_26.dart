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
  String str1 = 'images/Portfolio.png';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // 不生效
      height: 300, // 不生效
      alignment: Alignment.center,
      color: Colors.red,
      child: Container(
        width: 300,
        height: 300,
        color: Colors.yellow,
        child: Image.asset(str1, fit: BoxFit.contain),
      ),
    );
    // return ListView(
    //   children: [
    //     Image.asset('images/xin.jpg', fit: BoxFit.cover),
    //     Image.asset('images/2x/xin.jpg'),
    //     Image.asset(
    //       'images/3.5x/xin.jpg',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ],
    // );
  }
}
