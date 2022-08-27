import 'package:chatapp/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home view'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text('Home view body 1'),
            Text('Home view body 2'),
            Text('Home view body 3'),
            Text('Home view body 4'),
            ElevatedButton(
              child: Text('Elevated Button'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('Elevated Button'),
              onPressed: null,
            ),
            SizedBox(height: 15),
            IconButton(icon: Icon(Icons.send), onPressed: () {}),
            Icon(Icons.add_box),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer_outlined, size: 32),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 32),
            label: '',
          ),
        ],
      ),
    );
  }
}
