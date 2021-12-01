import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:toppingukking/screen/home_screen.dart';
import 'package:toppingukking/screen/like_screen.dart';
import 'package:toppingukking/screen/more_screen.dart';
import 'package:toppingukking/screen/search_screen.dart';
import 'package:toppingukking/widget/bottom_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naflix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              searchScreen(),
              LikeScreen(),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
