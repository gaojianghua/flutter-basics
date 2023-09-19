/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-19 10:44:09
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-19 14:39:27
 * @Description: file content
 */
import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  const ViewDemo({super.key});


  @override
  Widget build(BuildContext context) {
    return const GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({super.key});
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Image.network(
      posts[index].imageUrl,
      fit: BoxFit.cover,
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: posts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ), 
      itemBuilder: _gridItemBuilder,
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({super.key});
  
  List<Widget> _buildTiles(int length) {
    return List.generate(
      length,
      (index) {
        return Container(
          color: Colors.grey[500],
          alignment: const Alignment(0, 0),
          child: const Text(
            'item',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100.0, // 最大交叉轴尺寸
      crossAxisSpacing: 16.0, // 交叉轴间距
      mainAxisSpacing: 16.0, // 主轴间距
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({super.key});
  
  List<Widget> _buildTiles(int length) {
    return List.generate(
      length,
      (index) {
        return Container(
          color: Colors.grey[500],
          alignment: const Alignment(0, 0),
          child: const Text(
            'item',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0, // 交叉轴间距
      mainAxisSpacing: 16.0, // 主轴间距
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  const PageViewBuilderDemo({super.key});
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
              Text(
                posts[index].author,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: true, // 半自动滑动效果开关
      reverse: false, // 是否开启倒序排列
      scrollDirection: Axis.vertical, // 滚动方向
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'), // 页面切换事件
      controller: PageController(
        initialPage: 1, // 初始化页码
        viewportFraction: 0.8, // 页面缩放比例
        keepPage: false, // 是否保留当前页
      ),
      children: [
        Container(
          color: Colors.red,
          alignment: const Alignment(0, 0),
          child: const Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.black,
          alignment: const Alignment(0, 0),
          child: const Text(
            '2',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.orange,
          alignment: const Alignment(0, 0),
          child: const Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
