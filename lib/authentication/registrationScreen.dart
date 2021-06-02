import 'package:flutter/material.dart';
import 'package:woodnes/Widget/appBar.dart';
import 'package:woodnes/Widget/registration.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 1000,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/woodnes1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(),
              SizedBox(height: 50),
              Resgistration(),
            ],
          ),
        ),
      ),
    ));
  }
}
