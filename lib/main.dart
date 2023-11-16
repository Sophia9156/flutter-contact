import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text(a.toString()),
        onPressed: () {
          print(a);
          a++;
        },
      ),
      appBar: AppBar(),
      bottomNavigationBar: BottomAppBar(),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (c, i) {
            return ListTile(
              leading: Image.asset("assets/cat1.jpeg"),
              title: Text("홍길동"),
            );
          }),
    ));
  }
}
