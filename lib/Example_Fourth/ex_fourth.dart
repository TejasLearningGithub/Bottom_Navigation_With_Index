import 'package:flutter/material.dart';

class HomePageTaskFourth extends StatefulWidget {
  @override
  State<HomePageTaskFourth> createState() => _HomePageTaskFourthState();
}

class _HomePageTaskFourthState extends State<HomePageTaskFourth> {
  int activeIndex = 0;
  void changeActivePage(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  List<Widget> pages = [];

  @override
  void initState() {
    pages = [
      Page1(() => changeActivePage(2)),
      Page2(),
      Page3(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () => changeActivePage(0), icon: Icon(Icons.call)),
              IconButton(onPressed: () => changeActivePage(1), icon: Icon(Icons.message)),
            ],
          ),
        ),
        body: pages[activeIndex]);
  }
}

// 1st Page:

class Page1 extends StatelessWidget {
  final Function callback;

  const Page1(this.callback);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1')),
      body: Center(
        child: TextButton(
          onPressed: () => callback(),
          child: Text('Go to Page3'),
        ),
      ),
    );
  }
}

// 2nd Page:

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: AppBar(title: Text('Page2')));
}

// 3rd Page:

class Page3 extends StatelessWidget {
  const Page3();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page3')),
      body: Center(child: Text('Page3')),
    );
  }
}