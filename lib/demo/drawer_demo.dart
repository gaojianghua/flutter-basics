/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-18 14:18:21
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-18 14:20:10
 * @Description: file content
 */
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text(
              '高江华',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text('G598670138@163.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://gaojianghua.oss-cn-hangzhou.aliyuncs.com/home/wolffy.png'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: const NetworkImage(
                      'https://gaojianghua.oss-cn-hangzhou.aliyuncs.com/0.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                )),
          ),
          ListTile(
            title: const Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.message,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
