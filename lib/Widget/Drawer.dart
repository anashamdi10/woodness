import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image(
                      image: AssetImage("images/q.png"),
                    ),
                  ),
                  Text(
                    "WOODNES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.white70),
                          bottom: BorderSide(color: Colors.white70))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "الاسم المستخدم",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                Icons.person,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              CustomListTile("الرأسية ", Icons.home, null),
              CustomListTile("المفضلة ", Icons.favorite_border, null),
              CustomListTile(
                  "الأشعارات ", Icons.notification_important_rounded, null),
              CustomListTile("الشكاوي ", Icons.message, null),
            ],
          ),
          SizedBox(height: 200,),
          CustomListTile("انضم لمعارضنا ", Icons.shop,null),
          CustomListTile("الشروط والاحكام ", Icons.shop,null),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.white70),
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "تسجيل الخروج",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String data;
  Function function;

  CustomListTile(this.data, this.icon, this.function);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: () {
          function;
        },
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                data,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
