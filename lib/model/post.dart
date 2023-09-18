/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-18 09:51:25
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-18 09:55:42
 * @Description: file content
 */
class Post {
  const Post(
    {
      required this.title,
      required this.author,
      required this.imageUrl,
    }
  );
  
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  const Post(
    title: 'Post One',
    author: 'John',
    imageUrl: 'https://picsum.photos/200/300',
  ),
  const Post(
    title: 'Post One',
    author: 'John',
    imageUrl: 'https://picsum.photos/200/300',
  ),
  const Post(
    title: 'Post One',
    author: 'John',
    imageUrl: 'https://picsum.photos/200/300',
  ),
  const Post(
    title: 'Post One',
    author: 'John',
    imageUrl: 'https://picsum.photos/200/300',
  ),
  const Post(
    title: 'Post One',
    author: 'John',
    imageUrl: 'https://picsum.photos/200/300',
  ),
  const Post(
    title: 'Post One',
    author: 'John',
    imageUrl: 'https://picsum.photos/200/300',
  ),
  const Post(
    title: 'Post One',
    author: 'John',
    imageUrl: 'https://picsum.photos/200/300',
  )
];