/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-18 10:49:19
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-18 10:49:46
 * @Description: file content
 */
import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 90.0,
          fontWeight: FontWeight.bold,
          color: Color(0x66666666),
        ),
      ),
    );
  }
}