/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-20 16:39:46
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-20 17:57:34
 * @Description: file content
 */
import 'package:flutter/material.dart';


class MaterialComponents extends StatelessWidget {
const MaterialComponents({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialComponents'),
      ),
      body: ListView(
        children: const [
          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
const ButtonDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonDemo'),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final floatingActionButton = FloatingActionButton(
      onPressed: () {},
      elevation: 0.0, // 海拔高度，使其可以凸显出来
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0),
      // ),
      child: const Icon(Icons.add, color: Colors.white,),
    );

    final floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: const Icon(Icons.add),
      label: const Text('add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton'),
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          color: Colors.black12,
          height: 80,
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  const ListItem({ Key? key, required this.title, required this.page,  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          )
        );
      },
    );
  }
}

