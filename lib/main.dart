/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-16 13:43:45
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-20 10:41:55
 * @Description: file content
 */
import 'package:flutter/material.dart';
import '../demo/basic_demo.dart';
import '../demo/drawer_demo.dart';
import '../demo/bottom_navigation_bar_demo.dart';
import '../demo/list_view_demo.dart';
import '../demo/view_demo.dart';
import '../demo/sliver_demo.dart';
// import '../tabbar/home.dart';
import '../tabbar/category.dart';
import '../tabbar/video.dart';
import '../tabbar/cart.dart';
import '../tabbar/mine.dart';


void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/category': (context) => const Category(),
        '/video': (context) => const Video(),
        '/cart': (context) => const Cart(),
        '/mine': (context) => const Mine(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: const Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          actions: const <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
          elevation: 0.0,
          bottom: const TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.account_balance_wallet)),
                Tab(icon: Icon(Icons.airplane_ticket)),
                Tab(icon: Icon(Icons.alarm)),
                Tab(icon: Icon(Icons.view_quilt)),
              ]),
        ),
        body: const TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            SliverDemo(),
            ViewDemo(),
          ],
        ),
        drawer: const DrawerDemo(),
        bottomNavigationBar: const BottomNavigationBarDemo()
      ),
    );
  }
}
