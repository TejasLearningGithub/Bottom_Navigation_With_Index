import 'package:ex_first/screens/business_screen.dart';
import 'package:ex_first/screens/home_screen.dart';
import 'package:ex_first/screens/school_screen.dart';
import 'package:flutter/material.dart';

class MyHomePageExFirst extends StatefulWidget {
  MyHomePageExFirst({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageExFirstState createState() => _MyHomePageExFirstState();
}

int get selectdIdx => _selectedIndex;
set mySelected(int index) {
  _selectedIndex = index;
}

int _selectedIndex = 0;

class _MyHomePageExFirstState extends State<MyHomePageExFirst> {
  var index = 0;
  // List myScreen = [
  //   HomeScreen(),
  //   BusinessScreen(),
  //   SchoolScreen(),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onButtonPressed() {
    _onItemTapped(1); // Selects the third item in the bottom navigation bar
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: myScreen[selectdIdx],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onButtonPressed,
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
