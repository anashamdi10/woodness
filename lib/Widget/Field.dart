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

Widget imageCircle(String iamges) {
  return Container(
    padding: EdgeInsets.all(3.0),
    child: Container(
      width: 90,
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.red],
          )),
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(iamges),
            radius: 50,
          ),
        ),
      ),
    ),
  );
}

Widget imgHome(String img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 100,
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Image(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}

Widget more() {
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      width: 100,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 40,
                  width: 50,
                  child: IconButton(
                    icon:Icon( Icons.play_arrow , color: Colors.white,),
                    iconSize: 40,
                    onPressed: (){},
                  )
              ),
              Text("المزيد",style: TextStyle(
                color: Colors.white
              ),)
            ],
          ),
        ),
      ),
    ),
  );
}
