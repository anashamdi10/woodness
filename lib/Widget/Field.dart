import 'package:flutter/material.dart';
import 'package:woodnes/Widget/registration.dart';

// ignore: non_constant_identifier_names
Widget Field({Icon icon, TextInputType keyboardType}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: icon,
      ),
      textDirection: TextDirection.rtl,
    ),
  );
}

Widget label(String data) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            data,
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),
          ),
        )
      ],
    ),
  );
}

Widget button(String data) {
  return SizedBox(
      width: 150,
      child: RaisedButton(
        onPressed: () {},
        color: Colors.red,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Text(
          data,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ));
}
