import 'package:flutter/material.dart';
import 'package:travel_app/Bot.dart';
import 'package:travel_app/home.dart';
import 'package:travel_app/open.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tour App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(), // Set HomeScreen as the default screen
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Opening(),
    HomePage(),
    Bot(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image or content
          Positioned.fill(
            child: _pages[_selectedIndex],
          ),
          // Bottom navigation bar with rounded corners
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black,
                    )
                  ],
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: GNav(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the icons
                      gap: 2, // Reduce the gap between icons
                      rippleColor: Colors.grey,
                      hoverColor: Colors.grey,
                      activeColor: Colors.black,
                      iconSize: 24,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      duration: const Duration(milliseconds: 400),
                      tabBackgroundColor: Colors.white70,
                      color: Colors.grey,
                      tabs: const [
                        GButton(
                          icon: Icons.home,
                          text: 'HOME',
                        ),
                        GButton(
                          icon: Icons.explore,
                          text: 'EXPLORE',
                        ),
                        GButton(
                          icon: Icons.rocket_launch_rounded,
                          text: 'BOT',
                        ),
                      ],
                      selectedIndex: _selectedIndex,
                      onTabChange: _onItemTapped,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
