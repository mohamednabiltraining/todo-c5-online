import 'package:c5_online_todo/ui/home/home_screen.dart';
import 'package:c5_online_todo/ui/my_theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // new sebha test
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName :(buildContext)=>HomeScreen()
      },
      initialRoute:HomeScreen.routeName ,
      theme: MyThemeData.lightTheme,
    );
  }
}