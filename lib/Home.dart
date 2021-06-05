import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'Widget/Drawer.dart';
import 'Widget/Field.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: DrawerList(),
      ),
      body:  Container(
        height: 1000,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.white10,
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                ),
                centerTitle: true,
                title:Container(height: 100, width: 100, child: Image.asset("images/q.png")),
                actions: [
                  Builder(builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      icon: Icon(
                        Icons.menu, color: Colors.red,
                      ),
                    );
                  }),
                ],
              ),
              Container(
                height: 300,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  images: [
                    AssetImage('images/bed1.jpg'),
                    AssetImage('images/bed2.jpg'),
                    AssetImage('images/bed3.jpg'),
                  ],
                  dotSize: 0,
                  indicatorBgPadding: 0,
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageCircle('images/bed1.jpg'),
                    imageCircle('images/bed2.jpg'),
                    imageCircle('images/bed3.jpg'),
                    imageCircle('images/bed2.jpg'),
                    imageCircle('images/bed3.jpg'),
                    imageCircle('images/bed1.jpg'),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      "الصالونات",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                      ),
                    ),
                  ),
                ],
              ),
          Container(
            height: 200,
            child: ListView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              children: [
                imgHome('images/bed3.jpg'),
                imgHome('images/bed1.jpg'),
                imgHome('images/bed2.jpg'),
                imgHome('images/bed1.jpg'),
                imgHome('images/bed3.jpg'),
                more(),


              ],
            ),
          ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      "غرف الأطفال",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                child: ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    imgHome('images/bed3.jpg'),
                    imgHome('images/bed1.jpg'),
                    imgHome('images/bed2.jpg'),
                    more(),


                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      "مكتبات",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                child: ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    imgHome('images/bed3.jpg'),
                    imgHome('images/bed1.jpg'),
                    imgHome('images/bed2.jpg'),
                    more(),


                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

