import 'package:flutter/material.dart';
import 'package:omt_project/features/auth/presentation/screens/Offers.dart';
import 'package:omt_project/features/settings/persentation/screens/settings_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  List<Widget> screens = [
    Container(color: Colors.amber),
    Offers(),
    Container(color: Colors.blue),
    Settings(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          currentIndex == 1
              ? AppBar(
                title: Text(
                  'offers',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 5, 128, 228),
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                backgroundColor: const Color.fromARGB(255, 252, 248, 248),

                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 33,
                      color: const Color.fromARGB(255, 5, 128, 228),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
              : null,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // عشان يعرض كل الايقونات
        backgroundColor: Color.fromARGB(255, 5, 128, 228), // لون الشريط أزرق
        selectedItemColor: Colors.white, // لون الأيقونة المختارة أبيض
        unselectedItemColor:
            Colors.white70, // لون الأيقونات الغير مختارة رمادي فاتح
        showSelectedLabels: true, // يظهر اسم الأيقونة لما تتحدد
        showUnselectedLabels: true, // يظهر الاسم حتى لو مش
        currentIndex: currentIndex, //ابداء بي زرار الoffer
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
        onTap: (index) {
          print('Tapped on item $index');
          setState(() {
            currentIndex = index;
          });
          // هنا تكتبي الأكشن اللي عايزاه لما تدوسي على أي أيقونة
        },
      ),
    );
  }
}
