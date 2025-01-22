import 'package:flutter/material.dart';

void main() {
  /**
  *
  */
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String str1 =
      "https://ld5.res.netease.com/pc/zt/20241113163154/assets/F2P_a5b04f65.jpg";
  String str2 =
      "https://ld5.res.netease.com/pc/zt/20241113163154/assets/Action_e37dd478.jpg";
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(image: NetworkImage(str1)),
        Image(image: NetworkImage(str2)),
        Image.network(
          str1,
          cacheWidth: 16,
          cacheHeight: 9,
        ),
      ],
    );
  }
}
