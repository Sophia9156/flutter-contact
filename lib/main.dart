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
      body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                "assets/cat1.jpeg",
                width: 150,
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("카메라팝니다."),
                      Text("금호동 3가"),
                      Text("7000원"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.favorite), Text("4")],
                      )
                    ]),
              )
            ],
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
