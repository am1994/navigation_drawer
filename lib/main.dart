import 'package:flutter/material.dart';
import 'package:navigation_drawer/drawer_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Home Screen'),
          ),
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Center(
          child: Text('Welcome to Home Screen'),
        ),
      ),
    );
  }
}



