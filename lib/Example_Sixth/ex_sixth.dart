import 'package:ex_first/Example_Third/app.dart';
import 'package:ex_first/screens/business_screen.dart';
import 'package:ex_first/screens/home_screen.dart';
import 'package:ex_first/screens/school_screen.dart';
import 'package:flutter/material.dart';

class ExSixth extends StatefulWidget {
  int? index;
  ExSixth({super.key, this.index});

  @override
  State<ExSixth> createState() => _ExSixthState();
}

class _ExSixthState extends State<ExSixth> {
  int? _selectedIndex;
  ValueChanged<BottomNavigationBarItem>? onSelectTab;

  int myIndexForTapping = 1;

  goToTab(int? index) {
    setState(() => _selectedIndex = index!);
    print(_selectedIndex);

    // if (k != null) {
    //   setState(() {
    //     _selectedIndex = k;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          //currentIndex: widget.index ?? 0,
          //onTap: goToTab(widget.index ?? 0),
          currentIndex: _selectedIndex ?? 0,

          onTap: (index) {
            goToTabWithIndex(i: 1, j: index);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Item 1'),
            BottomNavigationBarItem(icon: Icon(Icons.mood), label: 'Item 2'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Item 3'),
          ],
        ),
        body: _listWidget.elementAt(widget.index ?? _selectedIndex ?? 0)

        // List.unmodifiable([
        //   Center(
        //       child: TextButton(
        //           onPressed: () => _goToTab(1), child: Text('Go to tab 2'))),
        //   Center(
        //       child: TextButton(
        //           onPressed: () => _goToTab(2), child: Text('Go to tab 3'))),
        //   Center(
        //       child: TextButton(
        //           onPressed: () => _goToTab(0),
        //           child: Text('Go to to back to tab 1'))),
        // ])[_selectedIndex],
        );
  }

  List<Widget> _listWidget = [
    BusinessScreen(),
    HomeScreen(),
    SchoolScreen(),
  ];

  int goToTabWithIndex({required int i, required int j}) {
    if (i == 1) {
      setState(() {
        _selectedIndex = 1;
      });

      print('1 Selected');
    }
    if (i == 2) {
      setState(() {
        _selectedIndex = 2;
      });

      print('2 Selected');
    }
    if (j == 0) {
      setState(() {
        _selectedIndex = 0;
      });

      print(_selectedIndex);
    }
    if (j == 1) {
      setState(() {
        _selectedIndex = 1;
      });
      print(_selectedIndex);
    }
    if (j == 2) {
      setState(() {
        _selectedIndex = 2;
      });
      print(_selectedIndex);
    }
    return _selectedIndex ?? 0;
  }
}
