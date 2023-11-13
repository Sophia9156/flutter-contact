import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("앱임"),
        actions: [
          Icon(Icons.search),
          Icon(Icons.menu),
          Icon(Icons.notifications_none_outlined)
        ],
      ),
      body: SizedBox(
          child: Text(
        "안녕하세요",
        style: TextStyle(
            color: Color(0xffff0000),
            fontSize: 20,
            fontWeight: FontWeight.w700),
      )),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page)
                ])),
      ),
    ));
  }
}
