import 'package:app/src/presentation/routes/routes.dart';
import 'package:app/src/presentation/screens/main_sign_in/main_sign_in.dart';
import 'package:app/src/presentation/screens/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.mainSignInScreen: (context) => const MainSignInScreen(),
    Routes.signInScreen: (context) => const SignInScreen(),
  };
}
