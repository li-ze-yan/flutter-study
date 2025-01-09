import 'package:flutter/material.dart';

void main() {
  /**
   * Scaffold 脚手架
   * 
   * Scaffold 是一个具有默认 Material Design 布局结构的应用程序的根 Widget。
   * 
   * Scaffold 提供了默认的 AppBar、Drawer、FloatingActionButton、SnackBar、BottomNavigationBar 等。
   * 
   * Scaffold 的子组件：
   * 
   * 1. AppBar
   * 2. Drawer
   * 3. FloatingActionButton
   * 4. SnackBar
   * 5. BottomNavigationBar
   * 6. body
   * 7. bottomSheet
   * 8. persistentFooterButtons
   * 9. floatingActionButtonLocation
   * 10. drawerDragStartBehavior
   * 11. extendBody
   * 12. extendBodyBehindAppBar
   * 13. bottomSheet
   * 14. primary
   * 15. resizeToAvoidBottomInset
   * 16.primary
   */
  int count = 0;
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        // leading: Text('左侧'),
        leading: const Icon(Icons.menu),
        title: const Text('fuck'),
        actions: const [Text('shit')],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('fuck click');
        },
        // 长按出现的提示
        tooltip: 'fuck',
        child: const Text('damn'),
      ),
      body: Row(
        children: [
          Text('$count'),
          Spacer(),
          const Text('111'),
          const Text('222'),
          const Text('333'),
          const Text('444'),
          const Text('555'),
          TextButton(
              onPressed: () {
                print('onPressed fuck');
              },
              onLongPress: () {
                print('onLongPress shit');
              },
              child: Text('fuck you')),
          GestureDetector(
            onLongPress: () {
              print('GestureDetector long press fuck you');
            },
            onTap: () {
              count++;
              print('GestureDetector tap fuck you $count');
            },
            child: Text("I'm damn"),
          ),
        ],
      ),
    ),
  ));
}
