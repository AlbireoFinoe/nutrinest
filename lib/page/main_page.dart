import 'package:flutter/material.dart';
import 'package:nutrinest_app/widget/chatbot.dart';
import 'package:nutrinest_app/widget/home.dart';
import 'package:nutrinest_app/widget/komunitas.dart';
import 'package:nutrinest_app/widget/profile.dart';

class main_page extends StatefulWidget {
  const main_page({super.key});

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page>{
List pages = [
Home(),
Chatbot(),
komunitas(),
profile(),
];
int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
bottomNavigationBar: BottomNavigationBar(
  selectedItemColor: Color(0xffF83758),
  unselectedItemColor: Colors.grey,
  onTap: (value) {
    setState(() {
      selectedIndex = value;
    });
  },
  currentIndex: selectedIndex,
  type: BottomNavigationBarType.fixed,
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/icon_chatbot.png'),
      ),
      label: 'Chatbot',
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/icon_komunitas.png'),
      ),
      label: 'Komunitas',
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/icon_profile.png'),
      ),
      label: 'Profile',
    ),
  ],
),

    );
  }
}



