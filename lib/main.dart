import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/first_page.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/profile_page.dart';

import 'package:flutter_demo/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() {
    print("usertap");
  }

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/homepage': (Context) => home_page(),
        '/settingpage': (Context) => setting_page(),
        '/profilepage': (Context) => ProfilePage(),
      },
      home: FirstPage(),
    );
  }
}
