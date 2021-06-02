import 'package:flutter/material.dart';
import 'package:woodnes/Widget/Field.dart';

class ForgetPassword2 extends StatefulWidget {
  const ForgetPassword2({Key key}) : super(key: key);

  @override
  _ForgetPassword2State createState() => _ForgetPassword2State();
}

class _ForgetPassword2State extends State<ForgetPassword2> {
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
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                    width:50,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(

                                      ),

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 22),
                                  child: Container(
                                    width:50,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(

                                      ),

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 22),
                                  child: Container(
                                    width:50,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(

                                      ),

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Container(
                                    width:50,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(

                                      ),

                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "تم إرسال رمز التأكيد على البريد الإلكتروني الخاص بك",
                              style: TextStyle(
                                color: Colors.green
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 200,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgetPassword2()));
                                },
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30))),
                                child: Text(
                                  "تأكيد",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Text(
                        " يمكنك إعاده إرسال الرمز بعد مرور : 1:30 ",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                    ]))));
  }
}
