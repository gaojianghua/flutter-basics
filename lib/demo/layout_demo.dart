/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-18 16:59:04
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-18 17:19:10
 * @Description: file content
 */
import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconBadge(Icons.add_circle, size: 30,),
        IconBadge(Icons.beach_access, size: 30,),
        IconBadge(Icons.airplanemode_active, size: 30,),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconBadge(
    this.icon, 
    {super.key, this.size = 50.0}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size+60,
      height: size+60,
      color: Colors.black87,
      child: Icon(icon, size: size, color: Colors.white,),
    );
  }
}