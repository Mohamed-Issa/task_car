import 'package:flutter/material.dart';
import 'package:task_car/screens/insurance.dart';
import 'package:task_car/screens/services.dart';

class TabScreenState extends StatefulWidget {
  static final String routeName = 'tab_screen_state';

  @override
  _TabScreenStateState createState() => _TabScreenStateState();
}

class _TabScreenStateState extends State<TabScreenState> {
  List<Map<String, Object>> _pages;
  int _selectPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': Services(), 'title': 'الوكالات'},
      {'page': Insurance(), 'title': 'الخدمات'},
      {'page': Insurance(), 'title': 'التأمين'},
      {'page': Insurance(), 'title': 'التأمين'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _pages[_selectPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          showUnselectedLabels: true,
          onTap: _selectPage,
          backgroundColor: Colors.indigo,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.indigoAccent,
          currentIndex: _selectPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.car_rental),
              label: 'الوكالات',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_repair), label: 'الخدمات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_repair), label: 'التأمين'),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_repair), label: 'التأمين'),
          ],
        ),
      ),
    );
  }
}
