import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';
import 'Widget/Drawer.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      endDrawer: Drawer(
        child: DrawerList(),
      ),
      body: HomeScreen(),
    );
  }
}
