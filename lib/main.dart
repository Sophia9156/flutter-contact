import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var likes = [0, 0, 0];
  var name = ["김영숙", "홍길동", "피자집"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          child: Text("click"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Text("안녕"),
                  );
                });
          },
        );
      }),
      appBar: AppBar(
        title: Text("연락처앱"),
      ),
      bottomNavigationBar: BottomAppBar(),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (c, i) {
            return ListTile(
              leading: CircleAvatar(child: Text(likes[i].toString())),
              title: Text(name[i]),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite_rounded,
                  color: Colors.pink,
                ),
                onPressed: () {
                  setState(() {
                    likes[i] += 1;
                  });
                },
              ),
            );
          }),
    ));
  }
}
