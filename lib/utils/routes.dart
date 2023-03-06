import 'package:flutter/material.dart';
import 'package:frontbitdemo/screens/first_screen/bottom/app_page.dart';
import 'package:frontbitdemo/screens/first_screen/bottom/cart_page.dart';
import 'package:frontbitdemo/screens/first_screen/bottom/chat.dart';
import 'package:frontbitdemo/screens/first_screen/search_page.dart';
import 'package:frontbitdemo/screens/second_screen/second_screen.dart';
import 'package:get/get.dart';

import '../screens/bottom_navigation/bottom_navigation.dart';
import '../screens/first_screen/first_page.dart';



mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const firstPage = "/FirstPage";
  static const secondScreen = "/SecondScreen";
  static const bottomPage = "/BottomPage";
  static const appPage = "/appPage";
  static const cartPage = "/CartPage";
  static const searchPage = "/SearchPage";
  static const chatPage = "/chatPage";

  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: firstPage,
      page: () => FirstPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: secondScreen,
      page: () => SecondScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: bottomPage,
      page: () => BottomPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: appPage,
      page: () => AppPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: searchPage,
      page: () => SearchPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: chatPage,
      page: () => ChatPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: cartPage,
      page: () => CartPage(),
      transition: defaultTransition,
    ),
  ];
}
