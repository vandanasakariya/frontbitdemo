import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontbitdemo/screens/first_screen/bottom/cart_page.dart';
import 'package:frontbitdemo/screens/first_screen/bottom/chat.dart';
import 'package:frontbitdemo/screens/first_screen/first_page.dart';
import 'package:frontbitdemo/screens/first_screen/search_page.dart';
import 'package:frontbitdemo/utils/sizeutils.dart';

import '../first_screen/bottom/app_page.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  List page = [
    FirstPage(),
    AppPage(),
    SearchPage(),
    ChatPage(),
    CartPage(),
  ];

  int count = 0;

  int i = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        count = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: page.elementAt(count),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_sharp,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Positioned(
                bottom: 10,
                child: Icon(
                  CupertinoIcons.search_circle_fill, color: Color(0xFF112233),
                  size: 45,
                  //  Icons.search,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart_outlined,
              ),
              label: "",
            ),
          ],
          currentIndex: count,
          selectedItemColor: Color(0xFF112233),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
