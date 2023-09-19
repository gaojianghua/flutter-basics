/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-19 14:41:23
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-19 17:24:27
 * @Description: file content
 */
import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: const Text('高江华'),
            floating: true,
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                '掘金第一菜狗',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                'https://gaojianghua.oss-cn-hangzhou.aliyuncs.com/0.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  const SliverListDemo({super.key});
  // 在 SliverList 中使用 Material 组件是无法应用圆角和阴影效果的。需要使用 ClipRRect 组件包裹 Image.network。
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2.0,
                        blurRadius: 4.0,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        posts[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(posts[index].title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )
                      ),
                      Text(posts[index].author,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
