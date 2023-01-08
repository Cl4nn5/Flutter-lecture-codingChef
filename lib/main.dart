// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstPage(),
    );
  }
}

// FirstPage stateless widget
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var
    getPage2() => MaterialPageRoute(builder: (context) => SecondPage());

    // return
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go To Second Page'),
          onPressed: () {
            Navigator.push(context, getPage2());
          },
        ),
      ),
    );
  }
}

// SecondPage stateless widget
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to First Page'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// vscode 가 가볍고 편한것이 장점
// andStudio 다양하고 효율적인 기능과 안정적인것이 장점
/* 
  ? context
  * route는 material app의 child로 생성되어야 한다.
  * 모든 앱은 material appWidget이 감싸고 있어야 한다.
  * firstPage의 위치를 정확히 알기 위해서 context argument가 필요하다.

 */
/* 
  * new Keywords
  1. Navigator
  2. MaterialPageRoute
  3. 자료구조 Stack => push, pop
 */

