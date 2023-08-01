import 'package:flutter/material.dart';
import 'package:tabbar_example/sub/firstPage.dart';
import 'package:tabbar_example/sub/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Example'),
      ),
      body: TabBarView(
        children: [
          FirstApp(),
          SecondApp(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(
        tabs: [
          Tab(
            icon: Icon(
              Icons.looks_one,
              color: Colors.blue,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.looks_two,
              color: Colors.blue,
            ),
          ),
        ],
        controller: controller,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }
}
