import 'package:counter/src/ui/first_screen.dart';
import 'package:counter/src/ui/home_screen.dart';
import 'package:counter/src/ui/second_screen.dart';
import 'package:counter/src/ui/third_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const homePage = '/';
  static const firstPage = '/firstPage';
  static const secondPage = '/secondPage';
  static const thirdPage = '/thirdPage';

  static Route routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homePage:
        return MaterialPageRoute(
            builder: (context) => const HomePage());
      case firstPage:
        return MaterialPageRoute(
            builder: (context) => const FirstPage(title: 'First Page'));
      case secondPage:
        return MaterialPageRoute(
            builder: (context) => const SecondPage(title: 'Second Page'));
      case thirdPage:
        return MaterialPageRoute(
            builder: (context) => const ThirdPage(title: 'Third Page'));
      default:
        throw Exception('Whoops, How did i get here??!?!');
    }
  }
}
