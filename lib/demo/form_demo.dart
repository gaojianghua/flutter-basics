/*
 * @Author: 高江华 g598670138@163.com
 * @Date: 2023-09-20 13:41:51
 * @LastEditors: 高江华
 * @LastEditTime: 2023-09-21 10:24:34
 * @Description: file content
 */
import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
        elevation: 0.0,
      ),
      body: Theme(
        data: ThemeData(
          primaryColor: Colors.blue,
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  late String username, password;  

  void submitRegisterForm() {
    registerFormKey.currentState?.validate();
    registerFormKey.currentState?.save();
    // 在新版本的 Flutter 中，使用 Scaffold.of(context) 来获取 Scaffold 上下文的方式已经被弃用。取而代之的是使用 ScaffoldMessenger.of(context)。
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Registering...'),)
    );
  }

  String? validatorUsername(value) {
    return value!.isEmpty ? '用户名不能为空' : null;
  }

  String? validatorPassword(value) {
    return value!.isEmpty ? '密码不能为空' : null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey, // 添加此行关联 GlobalKey
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: '用户名',
              helperText: '',
            ),
            onSaved: (newValue) {
              username = newValue!;
            },
            validator: validatorUsername,
            autovalidateMode: AutovalidateMode.onUserInteraction, // 用户交互时自动校验
            // autovalidateMode: AutovalidateMode.always, // 始终自动校验
            // autovalidateMode: AutovalidateMode.disabled, // 禁用自动校验
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: '密码',
              helperText: '',
              
            ),
            onSaved: (newValue) {
              password = newValue!;
            },
            validator: validatorPassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              color: Theme.of(context).hintColor,
              onPressed: submitRegisterForm,
              elevation: 0.0,
              child: Text('Register')
            ),
          )
        ],
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  const ThemeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    textEditingController.addListener(() {
      debugPrint('${textEditingController.text}');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (value) {
        debugPrint('${value}');
      },
      onSubmitted: (value) {
        debugPrint('${value}');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: '请输入内容',
        hintText: '请输入内容',
        border: InputBorder.none,
        filled: true,
        fillColor: Color(0xffeeeeee),
      ),
    );
  }
}