import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Field.dart';
class LoginUser extends StatefulWidget {
  const LoginUser({Key key}) : super(key: key);

  @override
  _LoginUserState createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  bool isHiddenPassword = true ;
  Widget icons =  Icon(Icons.visibility , color:  Colors.red,);
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 300,
      color: Colors.white,
      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "مرحباً",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40
              ),
            ),
          ),

          Text(
            "برجاء تسجيل الدخول",
            style: TextStyle(
              color:Color(0xFFFF8A80),

            ),
          ),


          label("البريد الالكتروني"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Field(
              icon:Icon(
                Icons.email ,
                color: Colors.red,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          label("كلمة المرور"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 50,
              child: TextField(
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                    prefixIcon: InkWell(
                        onTap: _viewPassword,
                        child:  icons)
                ),
                textDirection:TextDirection.rtl ,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10 , right: 30),
                child: Text(
                  "نسيت كلمة المرور ؟",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w200
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width:150 ,
            child: RaisedButton(
              onPressed: (){},
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Text(
                "دخول",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ) ,

    );


  }

  void _viewPassword() {
   if( isHiddenPassword ==true ){
     isHiddenPassword = false;
     icons = Icon(Icons.visibility ,color:Colors.red);

   }else{
     isHiddenPassword = true;
     icons = Icon(Icons.visibility_off , color: Colors.red);

   }
   setState(() {});
  }
}






