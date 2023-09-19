/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-18 14:51:43
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-18 14:59:54
 * @Description: file content
 */
import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  const BottomNavigationBarDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTopHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: _onTopHandler,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              tooltip: 'Home',
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              tooltip: 'Category',
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_front_rounded),
              tooltip: 'Video',
              label: 'Video',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              tooltip: 'Card',
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              tooltip: 'Mine',
              label: 'Mine',
            ),
          ],
        );
  }
}