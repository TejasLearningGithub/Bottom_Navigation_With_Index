import 'package:ex_first/ex_first.dart';
import 'package:ex_first/screens/business_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  //int index;
  HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('Go to next page'),
            onPressed: () {
              setState(() {
                mySelected = 1;
                //print();
              });
            },
          ),
        ),
      ),
    );
  }
}
