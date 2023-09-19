/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-18 16:59:04
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-19 10:38:51
 * @Description: file content
 */
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround, // 主轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.end, // 交差轴对齐方式
      children: [
        // const IconBadge(
        //   Icons.add_circle,
        //   size: 30,
        // ),
        // const IconBadge(
        //   Icons.beach_access,
        //   size: 30,
        // ),
        // const IconBadge(
        //   Icons.airplanemode_active,
        //   size: 30,
        // ),
        // SizedBox(
        //   // 固定尺寸的盒子
        //   width: 100.0,
        //   height: 100.0,
        //   child: Container(
        //     alignment: const Alignment(0.0, 0.0), // 设定对齐位置
        //     decoration: BoxDecoration(
        //       color: const Color.fromRGBO(3, 54, 255, 1),
        //       borderRadius: BorderRadius.circular(8.0),
        //     ),
        //     child: const Icon(
        //       Icons.access_alarm,
        //       color: Colors.white,
        //       size: 32,
        //     ),
        //   ),
        // ),
        // const StackDemo(),
        // const AspectRatioDemo(),
        ConstrainedBoxDemo(),
      ],
    );
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        // 带限制的盒子
        constraints: const BoxConstraints(
          minWidth: 100.0,
          maxHeight: 100,
        ),
        child: Container(color: Colors.red));
  }
}

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // 设置宽高比的盒子
      aspectRatio: 3.0 / 2.0,
      child: Container(
        color: Colors.black,
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      // 可以放一摞小部件,
      children: [
        SizedBox(
          width: 200.0,
          height: 200.0,
          child: Container(
            alignment: const Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(3, 54, 255, 1),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            alignment: const Alignment(0.0, 0.0),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1),
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(3, 54, 255, 1),
                ])),
            child: const Icon(
              Icons.brightness_2,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
        const Positioned(
            right: 20,
            top: 20,
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
              size: 32,
            )),
        const Positioned(
            right: 40,
            top: 50,
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
              size: 22,
            )),
        const Positioned(
            right: 15,
            top: 90,
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
              size: 28,
            )),
        const Positioned(
            right: 50,
            top: 100,
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
              size: 32,
            ))
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconBadge(this.icon, {super.key, this.size = 50.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + 60,
      height: size + 60,
      color: Colors.black87,
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
