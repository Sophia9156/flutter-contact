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
  var total = 3;
  var likes = [0, 0, 0];
  var name = ["김영숙", "홍길동", "피자집"];

  addOne() {
    setState(() {
      total++;
    });
  }

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
                  return DialogUI(addOne: addOne);
                });
          },
        );
      }),
      appBar: AppBar(
        title: Text(total.toString()),
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

class DialogUI extends StatelessWidget {
  DialogUI({super.key, this.addOne});
  final addOne;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              TextField(
                controller: inputData,
              ),
              TextButton(
                  onPressed: () {
                    addOne();
                  },
                  child: Text("완료")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("취소"))
            ],
          )),
    );
  }
}
