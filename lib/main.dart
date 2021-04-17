import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.adb),
        title: Text("Login Form"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTextField(Icons.person, "Username"),
                buildTextField(Icons.class_, "Class"),
                buildTextField(Icons.donut_large_rounded, "Major"),
                buildTextField(Icons.email, "Email"),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit"),
                ),
              ]),
        ),
      ),
    );
  }

  TextField buildTextField(icon, name) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText: name,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
