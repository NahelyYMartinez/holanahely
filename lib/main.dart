import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_app/page/galery.dart';
import 'package:my_app/page/description.dart';
import 'package:my_app/page/person.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';
// ignore: unused_import
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = const [
    Icon(
      Icons.person,
      size: 30,
    ),
    Icon(
      Icons.perm_media,
      size: 30,
    ),
    Icon(
      Icons.description,
      size: 30,
    ),
  ];
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        color: Colors.deepPurple,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Container(
        alignment: Alignment.center,
        child: getSelectedWidget(index: index),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    // ignore: unused_local_variable, prefer_const_constructors
    Widget widget = Person();
    switch (index) {
      case 0:
        widget = const Person();
        break;
      case 1:
        widget = const Galery();
        break;
      case 2:
        widget = const Description();
        break;
    }
    return widget;
  }
}
