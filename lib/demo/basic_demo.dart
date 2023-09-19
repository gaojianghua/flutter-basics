/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-18 15:21:06
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-18 16:56:24
 * @Description: file content
 */
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  const BasicDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerDemo();
  }
}


class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const NetworkImage('https://official-document.oss-cn-hangzhou.aliyuncs.com/local/avatar/a4936bc9-cc73-4671-a8ca-b27faae83d05.jpeg'),
          alignment: Alignment.topCenter,
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.deepOrange.withOpacity(0.3),
            BlendMode.hardLight,
          )
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // 与BoxDecoration中的color冲突
            // color: Colors.amber,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(8),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                color: const Color(0xFFFFFFFF),
                width: 3,
                style: BorderStyle.solid,
              ),
              // 与BoxShape.circle冲突
              // borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 7),
                  blurRadius: 18,
                  color: Colors.black,
                  spreadRadius: -2,
                )
              ],
              shape: BoxShape.circle,
              // 镜像渐变
              // gradient: const RadialGradient(
              //   colors: [Colors.amber, Colors.red],
              // ),
              // 线性渐变
              gradient: const LinearGradient(
                colors: [Colors.amber, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Icon(Icons.pool, size: 32, color: Colors.black87,),
          )
        ]
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'https://dosc.gaojianghua',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 26,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.cn',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black87,
            )
          )
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});
  final TextStyle _textStyle = const TextStyle(
    fontSize: 16,
  );
  final String _title = 'Vue.Js';
  final String _author = '尤雨溪';
  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》—— $_author。 渐进式 JavaScript 框架，易学易用，性能出色，适用场景丰富的 Web 前端框架。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}