import 'package:app/src/presentation/global/colors.dart';
import 'package:app/src/presentation/global/widgets/btn_custom.dart';
import 'package:app/src/presentation/routes/routes.dart';
import 'package:app/src/presentation/screens/main_sign_in/widgets/btn_social.dart';
import 'package:app/src/utils/navigation_utils.dart';
import 'package:flutter/material.dart';

class MainSignInScreen extends StatelessWidget {
  const MainSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('lib/src/assets/imgs/streamo.png',
                width: 200.0, height: 190.0, fit: BoxFit.contain),
          ),
          const BtnSocial(
              pathIcon: 'lib/src/assets/icons/facebook_colors_icon.svg',
              title: 'Continue with Facebook'),
          const BtnSocial(
              pathIcon: 'lib/src/assets/icons/google_colors_icon.svg',
              title: 'Continue with Google'),
          const BtnSocial(
            pathIcon: 'lib/src/assets/icons/apple_black_icon.svg',
            title: 'Continue with Apple',
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 11.0),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.white200,
                      height: 10,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "or",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.white200,
                      height: 10,
                      thickness: 1,
                    ),
                  ),
                ]),
          ),
          BtnCustom(
            title: 'Sign in with Password',
            onTap: () {
              NavigationUtils.goToPage(context, Routes.signInScreen);
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 25.0),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: AppColors.white500,
                        fontFamily: 'Poppins',
                        fontSize: 15.0),
                  ),
                  SizedBox(width: 2),
                  TextButton(
                      onPressed: null,
                      child: Text('Sign up',
                          style: TextStyle(
                            color: AppColors.electricViolet700,
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                          ))),
                ]),
          ),
        ],
      ),
    )));
  }
}
