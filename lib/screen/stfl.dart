import 'package:flutter/material.dart';

class StflExample extends StatefulWidget {
  const StflExample({Key? key}) : super(key: key);

  @override
  _StflExampleState createState() => _StflExampleState();
}

class _StflExampleState extends State<StflExample> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });

                  print('entered name is $name');
                },

                // textInputAction: TextInputAction.continueAction,
                // maxLines: null,
                // maxLength: 4,
                // keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                // obscuringCharacter: '*',
                // obscureText: true,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Name:',
                  hintText: 'Enter your name',
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "your best friend is $name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
