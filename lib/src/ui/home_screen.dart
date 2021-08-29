import 'package:counter/src/navigation/routes.dart';
import 'package:counter/src/ui/common_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homepage),
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
          Text(
            AppLocalizations.of(context)!.helloWorld,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomElevatedButton(
            onPressed: () => Navigator.pushNamed(context, Routes.firstPage),
            child: Text(
              AppLocalizations.of(context)!.firstPage,
            ),
            color: Colors.blue,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomElevatedButton(
            onPressed: () => Navigator.pushNamed(context, Routes.secondPage),
            child: Text(
              AppLocalizations.of(context)!.secondPage,
            ),
            color: Colors.red,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomElevatedButton(
            onPressed: () => Navigator.pushNamed(context, Routes.thirdPage),
            child: Text(
              AppLocalizations.of(context)!.thirdPage,
            ),
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
