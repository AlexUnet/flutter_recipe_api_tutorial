import 'package:flutter/material.dart';
import 'package:recipe_list_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food recipe',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: HomaPage(),
    );
  }
}
