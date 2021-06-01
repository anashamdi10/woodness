import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
            child: Image.asset("images/q.png")
        ),

        SizedBox(
          width: 15,
        ),
        Text(
          "WOODNES",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16
          ),
        ) ,

      ],
    );

}