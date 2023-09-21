/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-20 16:39:46
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-21 10:23:03
 * @Description: file content
 */
import 'package:flutter/material.dart';
import 'button_demo.dart';
import 'floating_action_button_demo.dart';
import 'form_demo.dart';

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialComponents'),
      ),
      body: ListView(
        children: const [
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
          ListItem(title: 'FormDemo', page: FormDemo()),
        ],
      ),
    );
  }
}





class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  const ListItem({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => page,
        ));
      },
    );
  }
}
