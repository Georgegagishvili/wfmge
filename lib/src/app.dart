import 'package:flutter/material.dart';
import 'package:wfmge/src/commons/exports.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WFMGe',
      // supportedLocales: L10n.supportedLocales,
      // locale: Locale(locale.name),
      // localizationsDelegates: const [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // routerConfig: locator<AppRouter>().router,
      theme: currentThemeData(AppTheme.dark),
      builder: (context, child) {
        if (child == null) {
          return const SizedBox.shrink();
        }
        return child;
      },
    );
  }
}
