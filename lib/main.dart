import 'package:flutter/material.dart';
import 'package:helloworld/tab/tab_page.dart';

// アプリの起動
void main() {
  runApp(MyApp());
}

// TOPページ起動
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY TODO',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabPage(),
    );
  }
}
