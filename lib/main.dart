import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_example/providers/heroesinfo.dart';
import 'package:providers_example/providers/villanosinfo.dart';
import 'package:providers_example/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => HeroesInfo(),
        ),
        ChangeNotifierProvider(
          builder: (context) => VillanosInfo(),
        )
      ],
      child: MaterialApp(
        title: 'Providers App',
        initialRoute: 'home',
        routes: {'home': (context) => HomePage()},
      ),
    );
  }
}

/* 
@override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      builder: (context) => HeroesInfo(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (context) => HomePage()},
      ),
    );
  } */
