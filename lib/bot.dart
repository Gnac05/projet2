import 'package:flutter/material.dart';
import 'package:projecttwo/cars.dart';
import 'package:projecttwo/home.dart';
import 'package:projecttwo/profile.dart';
import 'package:projecttwo/explore.dart';
import 'package:projecttwo/hotels.dart';

class Bot extends StatefulWidget {
  @override
  _BotState createState() => _BotState();
}

class _BotState extends State<Bot> {
  int _selectedIndex = 0;
  Set<Widget> _widgetOptions = <Widget>{
    Home(),
    Hotels(),
    Cars(),
    Explore(),
    Profile(),
  };

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hotel,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Hotels',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.car_rental,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Cars',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Explore',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
