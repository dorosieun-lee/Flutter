import 'package:flutter/material.dart';
import "button.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              wordSpacing: 10,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "이메일"),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "비밀번호"),
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("로그인"),
                ),
              ),
              CustomButton(text: "test custom button", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
