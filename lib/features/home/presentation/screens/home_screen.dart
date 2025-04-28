import 'package:flutter/material.dart';
import 'package:omt_project/features/home/presentation/screens/all_offers_screen.dart';
import 'package:omt_project/features/home/presentation/screens/home_content_screen.dart';
import 'package:omt_project/features/home/presentation/screens/menu_screen.dart';
import 'package:omt_project/features/home/presentation/screens/notifications_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeContentScreen(),
    AllOffersScreen(),
    NotificationsScreen(),
    MenuScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      backgroundColor: Colors.blue.shade800,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.white,
      selectedFontSize: 14,
      unselectedFontSize: 12,
      selectedIconTheme: const IconThemeData(size: 30),
      unselectedIconTheme: const IconThemeData(size: 24),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Offers'),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
      ],
    );
  }
}
