import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  elevation: 0.0,
                  onPressed: () {},
                  splashColor: Colors.grey,
                  child: Text('TextButton'),
                  color: Colors.amber,
                ),
                TextButton.icon(
                  onPressed: () {
                    // 按钮点击事件
                  },
                  icon: Icon(Icons.add),
                  label: Text('Add'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // 按钮点击事件
                  },
                  icon: Icon(Icons.edit),
                  label: Text('Edit'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    // 按钮点击事件
                  },
                  icon: Icon(Icons.delete),
                  label: Text('Delete'),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // 按钮点击事件
                  },
                  splashColor: Colors.red, // 设置渐没效果的颜色
                  child: ElevatedButton(
                    onPressed: () {
                      // 按钮点击事件
                    },
                    child: Text('Click Me'),
                  ),
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}