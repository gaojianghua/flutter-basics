/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-18 10:35:06
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-20 11:29:45
 * @Description: file content
 */
import 'package:flutter/material.dart';
import './post_show.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
              ),
              const SizedBox(height: 10.0),
              Row(  
                children: [
                  Expanded(
                    child: Text(
                      posts[index].title,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Text(
                    posts[index].author,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PostShow(post: posts[index])
                    )
                  );
                },
              ),
            ),
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
