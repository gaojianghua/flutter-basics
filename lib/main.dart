/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-16 13:43:45
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-18 11:43:30
 * @Description: file content
 */
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
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
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: null,
          ),
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
                Tab(text: '首页', icon: Icon(Icons.home)),
                Tab(text: '购物车', icon: Icon(Icons.card_travel)),
                Tab(text: '我的', icon: Icon(Icons.account_circle)),
              ]),
        ),
        body: const TabBarView(
          children: <Widget>[
            Icon(
              Icons.home,
              size: 128,
              color: Colors.black12,
            ),
            Icon(
              Icons.card_travel,
              size: 128,
              color: Colors.black12,
            ),
            Icon(
              Icons.account_circle,
              size: 128,
              color: Colors.black12,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('header'.toUpperCase()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
