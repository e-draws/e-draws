import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_draws/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions = [
    HomeScreen(),
    const Text("Orders"),
    const Text("Help"),
    const Text("Contact Us"),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _widgetOptions[_selectedIndex],
      ),
      backgroundColor: const Color(0xFFEEEDF2),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: _onItemTapped,
        backgroundColor: const Color(0xFFEEEDF2),
          color: const Color(0xFF334f6e),
          animationDuration: const Duration(microseconds: 300),
          buttonBackgroundColor: const Color(0xFF334f6e),
          items: const [
            Icon(FluentSystemIcons.ic_fluent_home_filled,
            color: Colors.white,
            ),
            Icon(FluentSystemIcons.ic_fluent_text_bullet_list_square_filled,
            color: Colors.white,
            ),
            Icon(FluentSystemIcons.ic_fluent_chat_help_filled,
            color: Colors.white,
            ),
            Icon(FluentSystemIcons.ic_fluent_pstn_call_filled,
            color: Colors.white,
            ),
          ],
      ),
    );
  }
}