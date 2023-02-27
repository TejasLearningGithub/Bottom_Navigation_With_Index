import 'package:ex_first/widget/business_widget.dart';
import 'package:ex_first/widget/home_widget.dart';
import 'package:ex_first/widget/school_widget.dart';
import 'package:flutter/material.dart';

class MySecondEx extends StatefulWidget {
  MySecondEx({Key? key, this.index}) : super(key: key);

  int? index;

  @override
  _MySecondExState createState() => _MySecondExState();
}

class _MySecondExState extends State<MySecondEx> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onButtonPressed() {
    _onItemTapped(2); // Selects the third item in the bottom navigation bar
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => SchoolPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBodyWidget(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
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

  Widget _getBodyWidget() {
    switch (_selectedIndex) {
      case 0:
        return HomeWidget();
      case 1:
        return BusinessWidget();
      case 2:
        return SchoolWidget();
      default:
        return Container();
    }
  }
}

class SchoolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SchoolWidget(),
    );
  }
}
