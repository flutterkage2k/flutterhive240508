import 'package:flutter/material.dart';
import 'package:flutterhive240508/compon/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.inversePrimary,
            // 이부분을 지정해주니까 오른쪽아래 플러스 버튼에 색상이 지정됨.
          ),
        ),
        drawer: const MyDrawer());
  }
}
