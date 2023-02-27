import 'package:flutter/material.dart';

class ExSixthSelf extends StatefulWidget {
  const ExSixthSelf({super.key});

  @override
  State<ExSixthSelf> createState() => _ExSixthSelfState();
}

class _ExSixthSelfState extends State<ExSixthSelf> {
  int _selectedIndex = 0;
  void _goToTab(int index) => setState(() => _selectedIndex = index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sixth Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {
                
              }, child: Text('Go to page 2')),
              ElevatedButton(onPressed: () {}, child: Text('Go to page 3'))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _goToTab,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Item 1'),
          BottomNavigationBarItem(icon: Icon(Icons.mood), label: 'Item 2'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Item 3'),
        ],
      ),
    );
  }
}
