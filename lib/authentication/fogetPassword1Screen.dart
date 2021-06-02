import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woodnes/Widget/Field.dart';
import 'package:woodnes/authentication/forgetPassword2Screen.dart';

class ForgetPassword1 extends StatefulWidget {
  const ForgetPassword1({Key key}) : super(key: key);

  @override
  _ForgetPassword1State createState() => _ForgetPassword1State();
}

class _ForgetPassword1State extends State<ForgetPassword1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/woodnes1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/w.gif")),
              ),
              Text(
                " ادخل البريد الألكتروني المسجل ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  decoration: TextDecoration.underline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(20, 30))),
                  height: 200,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30, top: 30),
                          child: Text(
                            "البريد الإلكتروني",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 10),
                      child: Field(
                        icon: Icon(
                          Icons.person,
                          color: Colors.red,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword2()));
                      },
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Text(
                        "دخول",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
