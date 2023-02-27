import 'package:ex_first/Example_Sixth/ex_sixth.dart';
import 'package:ex_first/Example_Sixth/ex_sixth_self.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({super.key});

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  ExSixth myEx = ExSixth();
  //ExSixthState myExPublic = ExSixthState();
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myIndex = 1;

                 // myExPublic.goToTab(1);
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExSixth(index: myIndex)));
              },
              child: const Text(
                'Go To First Page',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myIndex = 2;
                });
                //myExPublic.goToTab(2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExSixth(index: myIndex)));
              },
              child: const Text(
                'Go To Second Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
