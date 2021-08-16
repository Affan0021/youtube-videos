import 'package:flutter/material.dart';
import 'Gumaan.dart';
import 'Apocaly.dart';
import 'darkhast.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [
    Gumaan(),
    Darkhast(),
    Apocaly()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: Colors.redAccent,

      body: _pageOptions[selectedPage],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), title: Text('Gumaan')),
          BottomNavigationBarItem(icon: Icon(Icons.mail, size: 30), title: Text('Darkhawast')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle, size: 30), title: Text('Apocalypse')),
        ],
        selectedItemColor: Colors.blueGrey,
        elevation: 5.0,
        unselectedItemColor: Colors.white,
        currentIndex: selectedPage,
        backgroundColor: Colors.black87,
        onTap: (index){
          setState(() {
            selectedPage = index;
          });
        },
      ),

    );
  }
}
