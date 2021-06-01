
import 'package:flutter/material.dart';
import 'package:woodnes/Widget/Field.dart';
import 'package:woodnes/Widget/appBar.dart';
import 'package:woodnes/Widget/login.dart';
import 'package:woodnes/authentication/registrationScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        child:  Padding(
      padding: EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          children: [
            appBar(),
            SizedBox(height: 50),
            LoginUser(),
            SizedBox(height: 50 ,),
            button("ليس لديك حساب ؟" ),
            SizedBox(height: 20 ,),
            button("دخول المعرض")

          ],
        ),
      ) ,
    ),
      )


    );

  }
}

