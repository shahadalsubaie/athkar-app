import 'package:athkar/pages/counter.dart';
import 'package:athkar/pages/favorite.dart';
import 'package:athkar/pages/home_page.dart';
import 'package:athkar/pages/setting.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav_Bar extends StatefulWidget {
  const Nav_Bar({
    super.key,
  });

  @override
  State<Nav_Bar> createState() => _Nav_BarState();
}

class _Nav_BarState extends State<Nav_Bar> {
  var currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const Setting(),
      const Favorite(),
      const Counter(),
      const HomePage(),
    ];
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: FlashyTabBar(
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.settings, color: Color(0xffaab9a9)),
            title: Text(
              'الاعدادات  ',
              style: GoogleFonts.markaziText(color: const Color(0xffaab9a9)),
              // TextStyle(color: Color(0xffaab9a9)),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.favorite, color: Color(0xffaab9a9)),
            title: Text(
              'المفضلة ',
              style: GoogleFonts.markaziText(color: const Color(0xffaab9a9)),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.add, color: Color(0xffaab9a9)),
            title: Text(
              'السبحة',
              style: GoogleFonts.markaziText(color: const Color(0xffaab9a9)),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.home, color: Color(0xffaab9a9)),
            title: Text(
              'الصفحة الرئيسية',
              style: GoogleFonts.markaziText(color: const Color(0xffaab9a9)),
            ),
          ),
        ],
        animationCurve: Curves.linear,
        selectedIndex: currentIndex,
        iconSize: 30,
        showElevation: false, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
      ),
    );
  }
}
