import 'package:flutter/material.dart';
import 'TampilHalaman.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
              elevation: 0, color: Colors.white
          )//AppBarTheme
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new RaisedButton(
          child: const Text('Mulai') ,
          color: Theme
              .of(context)
              .accentColor ,
          elevation: 4.0 ,
          splashColor: Colors.red ,
          textColor: const Color(0xFFFFFFFF) ,
          onPressed: () {
            openNewSreen(context , TampilHalaman());
          }) ,
    );
  }

  void openNewSreen(BuildContext context , Widget screen) {
    Navigator.push(context , MaterialPageRoute(builder: (context) => screen));
  }

}