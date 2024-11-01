import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:task_knight/pages/home_page.dart';
import 'package:task_knight/pages/splash_screen.dart';

void main() async{
  await Hive.initFlutter();
  var box=await Hive.openBox('mybox');
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen(),
        theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
