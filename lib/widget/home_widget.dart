import 'package:ex_first/Example_Third/app.dart';
import 'package:ex_first/ex_second.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({
    super.key,
  });

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    myIndex = 1;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MySecondEx(
                                index: myIndex,
                              )));
                },
                child: Text('Go to business Page')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    myIndex = 2;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MySecondEx(
                        index: myIndex,
                      ),
                    ),
                  );
                },
                child: Text('Go to School Page')),
          ],
        ),
      ),
    );
  }
}
