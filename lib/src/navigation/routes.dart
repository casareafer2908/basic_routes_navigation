import 'package:counter/src/ui/first_screen.dart';
import 'package:counter/src/ui/home_screen.dart';
import 'package:counter/src/ui/second_screen.dart';
import 'package:counter/src/ui/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            builder: (context) =>
                FirstPage(title: AppLocalizations.of(context)!.firstPage));
      case secondPage:
        return MaterialPageRoute(
            builder: (context) =>
                SecondPage(title: AppLocalizations.of(context)!.secondPage));
      case thirdPage:
        return MaterialPageRoute(
            builder: (context) =>
                ThirdPage(title: AppLocalizations.of(context)!.thirdPage));
      default:
        throw Exception('This screen doesn\'t exist');
    }
  }
}
