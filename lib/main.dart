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
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          // verticalDirection: VerticalDirection.down,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          children: [
            /* 
              가로 세로 100px 
              색상 [화이트 블루 레드]
              각각의 container 이름 부여
            */
            MyContainer1(),
            MyContainer1(
              flexWidth: 100,
              color: Colors.blue,
            ),
            SizedBox(
              width: 100,
              height: 100,
            ),
            MyContainer1(),
          ],
        ),
      ),
    );
  }
}

// class MyContainer1 extends StatelessWidget { 매개변수 String color 추가
class MyContainer1 extends StatelessWidget {
  final int flexWidth;
  final Color color;
  const MyContainer1({
    super.key,
    this.color = Colors.white,
    this.flexWidth = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: flexWidth.toDouble(),
      height: 100,
      color: color,
      child: Text('white'),
    );
  }
}

// vscode 가 가볍고 편한것이 장점
// andStudio 다양하고 효율적인 기능과 안정적인것이 장점
/* 
  * column widget은 세로축 방향으로 가능한 모든 공간을 차지한다.
  * new Keywords
  1. verticalDirection
  2. mainAxisAlignment
  3. crossAxisAlignment
  4. mainAxisSize
 */

