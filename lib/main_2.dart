import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//       home: Text(
//     "abc",
//     style: TextStyle(fontSize: 200),
//   )));
// }

// void main() {
//   runApp(const MaterialApp(
//       home: Center(
//           child: Text(
//     "abc",
//     style: TextStyle(fontSize: 200),
//   ))));
// }

void main() {
  String str = "abc";
  runApp(MaterialApp(
      home: Center(
          child: Text(
    str,
    style: const TextStyle(fontSize: 200),
  ))));
}
