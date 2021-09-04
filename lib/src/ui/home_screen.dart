import 'package:basic_routes_navigation/src/localization/locale_keys.g.dart';
import 'package:basic_routes_navigation/src/navigation/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'common_widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("homepage"),
      ),
      body: _buildContent(context),
    );
  }

  _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            "hello world",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomElevatedButton(
            key: const ValueKey('firstPage'),
            onPressed: () => Navigator.pushNamed(context, Routes.firstPage),
            child: const Text(LocaleKeys.firstPage).tr(),
            color: Colors.blue,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomElevatedButton(
            key: const ValueKey('secondPage'),
            onPressed: () => Navigator.pushNamed(context, Routes.secondPage),
            child: const Text(
              "second page",
            ),
            color: Colors.red,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomElevatedButton(
            key: const ValueKey('thirdPage'),
            onPressed: () => Navigator.pushNamed(context, Routes.thirdPage),
            child: const Text(
              "third page",
            ),
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
