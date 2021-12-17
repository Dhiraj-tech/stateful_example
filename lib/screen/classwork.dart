import 'package:flutter/material.dart';

class Adder extends StatefulWidget {
  const Adder({Key? key}) : super(key: key);

  @override
  _AdderState createState() => _AdderState();
}

class _AdderState extends State<Adder> {
  String first = '';
  String second = '';

  int sum = 0;

  bool validatenum1 = false;
  bool validatenum2 = false;

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adder",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                //step-2
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "First Number",
                  hintText: "Enter first number here...",
                  errorText: validatenum1 ? "This field is required" : null,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                //step-2
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Second Number",
                  hintText: "Enter second number here...",
                  errorText: validatenum2 ? "This field is required" : null,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  first = num1.text;
                  second = num2.text;
                  first.isEmpty ? validatenum1 = true : validatenum1 = false;
                  second.isEmpty ? validatenum2 = true : validatenum2 = false;
                  if (first.isNotEmpty && second.isNotEmpty) {
                    sum = int.parse(first) + int.parse(second);
                  } else {
                    sum = 0;
                  }
                });
              },
              icon: Icon(Icons.calculate),
              label: Text("Add"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("$sum"),
          ],
        ),
      ),
    );
  }
}