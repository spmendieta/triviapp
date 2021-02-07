import 'package:flutter/material.dart';
import 'package:triviapp/screens/welcome.dart';

class Triviapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Triviapp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Welcome(),
    );
  }
}
