import 'package:facebook_clone/pages/home_page.dart';
import 'package:facebook_clone/widgets/story_container_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        canvasColor: Colors.white,
        backgroundColor: Colors.white
      ),
      home: const MyHomePage(title: 'facebook'),
    );
  }
}
