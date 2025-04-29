import 'package:flutter/material.dart';
import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:ala_el_tareek/features/home/presentation/screens/home_content_screen.dart';
import 'package:ala_el_tareek/features/home/presentation/screens/notifications_screen.dart';
import 'package:ala_el_tareek/features/offers/presentation/screens/Offers.dart';
import 'package:ala_el_tareek/features/settings/persentation/screens/settings_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  List<Widget> screens = [
    HomeContentScreen(),
    Offers(),
    NotificationsScreen(),
    Settings(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // عشان يعرض كل الايقونات
        backgroundColor: AppColors.mainColor, // لون الشريط أزرق
        selectedItemColor: Colors.white, // لون الأيقونة المختارة أبيض
        unselectedItemColor:
            Colors.white70, // لون الأيقونات الغير مختارة رمادي فاتح
        showSelectedLabels: true, // يظهر اسم الأيقونة لما تتحدد
        showUnselectedLabels: true, // يظهر الاسم حتى لو مش
        currentIndex: currentIndex, //ابداء بي زرار الoffer
        selectedLabelStyle: AppTextStyle.bodyTextMedium14,
        unselectedLabelStyle: AppTextStyle.bodyTextRegular14,
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
