import 'package:ex_first/screens/business_screen.dart';
import 'package:ex_first/screens/home_screen.dart';
import 'package:ex_first/screens/school_screen.dart';
import 'package:flutter/material.dart';

class MyHomePageEight extends StatefulWidget {
  MyHomePageEight({Key? key}) : super(key: key);

  @override
  _MyHomePageEightState createState() => _MyHomePageEightState();
}

class _MyHomePageEightState extends State<MyHomePageEight> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    BusinessScreen(), HomeScreen(), SchoolScreen(),
    //GradeTrackerPage(), DiaryPage(), BoosterCommunityPage(),
  ];

  void _onPageChanged(int index) {}
  void _onItemsTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        //I want it to be implemented in this line

        title: Text('BottomNavBar selected index title or label'),
      ),
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemsTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.grey,
            ),
            label: 'Task List',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_view_month,
              color: Colors.grey,
            ),
            label: 'Calendar View',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.grade, color: Colors.grey,),
          //   label: 'Grade Tracker',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.book, color: Colors.grey,),
          //   label: 'Diary Page',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.business, color: Colors.grey,),
          //   label: 'Booster Community',
          // ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100.0,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text('Sign in first'),
              ),
            ),
            ListTile(
              title: const Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help and Support'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
