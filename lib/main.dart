import 'package:flutter/material.dart';
import 'package:nutrinest_app/page/login_page.dart';
import 'package:nutrinest_app/page/notif.dart';
import 'package:nutrinest_app/pages/dataibu.dart';
import 'package:nutrinest_app/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Signup());
  }
}
