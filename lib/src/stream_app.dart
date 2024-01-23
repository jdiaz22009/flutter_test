import 'package:app/src/data/theme/theme.dart';
import 'package:app/src/presentation/routes/app_routes.dart';
import 'package:app/src/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

class StreamApp extends StatelessWidget {
  const StreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        theme: lightModeTheme,
        darkTheme: darkModeTheme,
        initialRoute: Routes.mainSignInScreen,
        routes: appRoutes,
      ),
    );
  }
}
