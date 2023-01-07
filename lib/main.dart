// ignore_for_file: prefer_const_constructors, avoid_print
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
        centerTitle: true,
      ),
      /*
      Flutter 1.0 Code
      body: Builder(builder: (BuildContext ctx) { 
        return Center(...) 
                      ^^^: 이 부분이 context
        reference: https://www.youtube.com/watch?v=-zxGPfjiQQA&list=PLQt_pzi-LLfpcRFhWMywTePfZ2aPapvyl&index=19&t=12m40s
      },)
       */
      body: Center(
        child: TextButton(
          onPressed: () {
            // 함수이므로 끝에 ;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Hello World!'),
            ));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
          child: Text(
            "show Me",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
