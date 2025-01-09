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
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        // leading: Text('左侧'),
        leading: const Icon(Icons.menu),
        title: Text('fuck'),
      ),
      body: const Center(
        child: Text('shit'),
      ),
    ),
  ));
}
