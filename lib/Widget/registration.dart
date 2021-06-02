import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'Field.dart';

class Resgistration extends StatefulWidget {
  const Resgistration({Key key}) : super(key: key);

  @override
  _ResgistrationState createState() => _ResgistrationState();
}

class _ResgistrationState extends State<Resgistration> {
  bool isHiddenPassword = true;
  Widget icons = Icon(
    Icons.visibility,
    color: Colors.red,
  );

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "مرحباً",
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          Text(
            "برجاء تسجيل البيانات",
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 24),
          ),
          label("الاسم الاول"),
          Field(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 10),
          label("الاسم الوسط"),
          Field(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 10),
          label("الاسم الاخير"),
          Field(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 10),
          label("البريد الالكتروني"),
          Field(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 10),
          label("البريد الالكتروني"),
          Field(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 10),
          label("كلمة المرور"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              child: TextField(
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                    prefixIcon: InkWell(onTap: _viewPassword, child: icons)),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          SizedBox(height: 10),
          label("تأكيد كلمة المرور"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              child: TextField(
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                    prefixIcon: InkWell(onTap: _viewPassword, child: icons)),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          SizedBox(height: 10),
          label("رقم الهاتف"),
          Field(
            icon: Icon(
              Icons.call,
              color: Colors.red,
            ),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 10),
          label("المدينة"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    width: 260,
                    child: DropdownButton(
                      items: [],
                      onChanged: null,
                    ),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "الشروط و الاحكام ",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                "اوافق على  ",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Checkbox(
                  value: value,
                  onChanged: (value) {
                    if (value == true) {
                      value = false;
                    } else {
                      value = true;
                    }
                    setState(() {});
                  }),
            ],
          ),
          button("تسجيل"),
        ],
      ),
    );
  }

  void _viewPassword() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
      icons = Icon(Icons.visibility, color: Colors.red);
    } else {
      isHiddenPassword = true;
      icons = Icon(Icons.visibility_off, color: Colors.red);
    }
    setState(() {});
  }
}
