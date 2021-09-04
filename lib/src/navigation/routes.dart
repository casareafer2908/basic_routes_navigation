import 'package:basic_routes_navigation/src/ui/first_screen.dart';
import 'package:basic_routes_navigation/src/ui/home_screen.dart';
import 'package:basic_routes_navigation/src/ui/second_screen.dart';
import 'package:basic_routes_navigation/src/ui/third_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const homePage = '/';
  static const firstPage = '/firstPage';
  static const secondPage = '/secondPage';
  static const thirdPage = '/thirdPage';

  static Route routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case firstPage:
        return MaterialPageRoute(
            builder: (context) => const FirstPage(title: 'first page'));
      case secondPage:
        return MaterialPageRoute(
            builder: (context) => const SecondPage(title: 'second page'));
      case thirdPage:
        return MaterialPageRoute(
            builder: (context) => const ThirdPage(title: 'third page'));
      default:
        throw Exception('This screen doesn\'t exist');
    }
  }
}
