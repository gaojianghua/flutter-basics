/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-20 11:23:07
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-20 13:37:38
 * @Description: file content
 */
import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;
  const PostShow({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
      ),
      body: Column(
        children: [
          Image.network(
            post.imageUrl,
          ),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${post.title}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  '${post.author}',
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}