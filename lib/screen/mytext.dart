import 'package:flutter/material.dart';

class MyTextFieldState extends StatefulWidget {
  const MyTextFieldState({Key? key}) : super(key: key);
  @override
  MyTextFieldStateState createState() => MyTextFieldStateState();
}

class MyTextFieldStateState extends State<MyTextFieldState> {
  String firstname = '';
  String lastname = '';
  bool firstvalidate = false;
  bool lastvalidate = false;
  // step-1
  TextEditingController myfirstcontroller = TextEditingController();
  TextEditingController mylastcontroller = TextEditingController();
  //Step-1
  @override
  void dispose() {
    myfirstcontroller.dispose();
    mylastcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField retrieval')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              //step-2
              controller: myfirstcontroller,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Enter your first name',
                border: const OutlineInputBorder(),
                errorText: firstvalidate ? "filled cannot be empty" : null,
                errorStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              //step-2
              controller: mylastcontroller,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: 'Last Name',
                hintText: 'Enter your last name',
                border: const OutlineInputBorder(),
                errorText: lastvalidate ? "filled cannot be empty" : null,
                errorStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  // step-3 retrieving the value.
                  firstname = myfirstcontroller.text;
                  lastname = mylastcontroller.text;
                  firstname.isEmpty
                      ? firstvalidate = true
                      : firstvalidate = false;
                  lastname.isEmpty ? lastvalidate = true : lastvalidate = false;
                });
              },
              child: const Icon(Icons.add),
            ),
            Text(firstname + " " + lastname, textScaleFactor: 3),
          ],
        ),
      ),
    );
  }
}
