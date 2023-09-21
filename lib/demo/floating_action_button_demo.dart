import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final floatingActionButton = FloatingActionButton(
      onPressed: () {},
      elevation: 0.0, // 海拔高度，使其可以凸显出来
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0),
      // ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );

    final floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: const Icon(Icons.add),
      label: const Text('add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton'),
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          color: Colors.black12,
          height: 80,
        ),
      ),
    );
  }
}