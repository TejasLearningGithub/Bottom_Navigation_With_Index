import 'package:ex_first/Example_Eight/ex_eight.dart';
import 'package:ex_first/Example_Fourth/ex_fourth.dart';
import 'package:ex_first/Example_Seventh/ex_seventh_p_first.dart';
import 'package:ex_first/Example_Sixth/ex_sixth.dart';
import 'package:ex_first/Example_Sixth/ex_sixth_self.dart';
import 'package:ex_first/Example_Third/app.dart';
import 'package:ex_first/ex_first.dart';
import 'package:ex_first/ex_second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ExSixth());
  }
}
