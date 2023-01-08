// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers,use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast MaterialApp',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast message"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("Button is clicked");
            flutterToast();
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.redAccent,
          ),
          child: Text(
            "Toast",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: "This is Center Short Toast",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    // timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

// toast Message는 widget tree와 상관 없이 호출 가능하다.
// lib 추가 후 import 할 때 pubspec.yaml 파일에 추가해야 한다.
// pubspec.yaml 파일에 추가 후 pub get을 해야 한다.
// pub get을 하지 않으면 import가 되지 않는다.
// 1. flutter clean 
// 2. flutter pub get