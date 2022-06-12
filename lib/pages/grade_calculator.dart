import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var inputText = TextEditingController();
  String grade = "";

  String convert(int grade) {
    if (grade >= 90) {
      return "A";
    } else if (grade >= 80) {
      return "B";
    } else if (grade >= 70) {
      return "C";
    } else {
      return "F";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Grade calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "[Your grade is]",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 100),
              child: TextField(
                controller: inputText,
                decoration: InputDecoration(
                    hintText: "Enter your grade",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 80, left: 80, top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                onPressed: () {
                  setState(() {
                    grade = convert(int.parse(inputText.text));
                  });
                },
                child: Text("Calculate"),
              ),
            ),
            Text(
              grade,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent),
            ),
          ],
        ),
      ),
    );
  }
}
