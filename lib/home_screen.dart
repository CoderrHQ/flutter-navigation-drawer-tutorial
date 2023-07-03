import 'package:flutter/material.dart';

import 'my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3444B5),
        title: const Text('Home Screen'),
      ),
      drawer: const MyDrawer(),
      endDrawer: const MyDrawer(),
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Text('Open Drawer'),
            ),
          );
        },
      ),
    );
  }
}
