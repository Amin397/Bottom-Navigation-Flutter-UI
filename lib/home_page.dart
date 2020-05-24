import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Bottom Navigation" , style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("This is simple example of bottom navigation bar" , style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
          height: 50.0,
          index: 2,
          animationDuration: Duration(milliseconds: 700),
          animationCurve: Curves.easeOutQuart,
          backgroundColor: Colors.deepOrange,
          buttonBackgroundColor: Colors.white,
          items: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.search , size: 20.0 , color: Colors.black,),
                Text("search" , style: TextStyle(color: Colors.black),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.camera , size: 20.0 , color: Colors.black,),
                Text("camera" , style: TextStyle(color: Colors.black),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add , size: 20.0 , color: Colors.black,),
                Text("add" , style: TextStyle(color: Colors.black),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add_shopping_cart , size: 20.0 , color: Colors.black,),
                Text("cart" , style: TextStyle(color: Colors.black),),
              ],
            ),
          ],
        onTap: (index){
            debugPrint("Current index is $index");
        },
      ),
    );
  }
}
