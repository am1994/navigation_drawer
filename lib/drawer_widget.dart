import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:navigation_drawer/first_screen.dart';
import 'package:navigation_drawer/second_screen.dart';
import 'package:navigation_drawer/third_screen.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [ Colors.white,Colors.blueAccent],
                stops: [0.3, 1],
              ),
            ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   width: 90.0,
                   height: 90.0,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                       fit: BoxFit.cover,
                       image: AssetImage('assets/user.jpg')
                     )
                   ),
                 ),
                 Text('Mina',style: TextStyle(fontWeight: FontWeight.bold),)
               ],
             ),
          ),

          ListTile(
            leading: Icon(Icons.add),
            title: Text('First Screen',style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => FirstScreen()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Second Screen',style: TextStyle(fontWeight: FontWeight.bold),),
            onTap:  (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SecondScreen()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_emoticon),
            title:Text('Third Screen',style: TextStyle(fontWeight: FontWeight.bold),),
            onTap:  (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ThirdScreen()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title:Text('Home Screen',style: TextStyle(fontWeight: FontWeight.bold),),
            onTap:  (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
