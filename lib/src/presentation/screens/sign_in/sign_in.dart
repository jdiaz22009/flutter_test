import 'package:app/src/presentation/global/colors.dart';
import 'package:app/src/presentation/global/widgets/btn_custom.dart';
import 'package:app/src/presentation/global/widgets/checkbox.dart';
import 'package:app/src/presentation/screens/main_sign_in/widgets/btn_social.dart';
import 'package:app/src/presentation/screens/sign_in/widgets/input_field.dart';
import 'package:app/src/utils/navigation_utils.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white50,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            NavigationUtils.goToBack(context);
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'lib/src/assets/imgs/streamo_logo.png',
                width: 100.0,
                height: 100.0,
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Create New Account',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )),
              const InputField(
                iconPath: 'lib/src/assets/icons/mail_icon.svg',
                hintText: 'Email',
                focusColorBorder: AppColors.electricViolet700,
              ),
              const InputField(
                iconPath: 'lib/src/assets/icons/lock_icon.svg',
                hintText: 'Password',
                showPassword: true,
                focusColorBorder: AppColors.electricViolet700,
              ),
              const CheckBoxCustom(
                label: 'Remember me',
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BtnCustom(
                  title: 'Sign up',
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 24.0, horizontal: 20.0),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Divider(
                        color: AppColors.white200,
                        height: 10,
                        thickness: 1,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('or continue with',
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColors.white500,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                      ),
                      Expanded(
                          child: Divider(
                        color: AppColors.white200,
                        height: 10,
                        thickness: 1,
                      )),
                    ]),
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                BtnSocial(
                  pathIcon: 'lib/src/assets/icons/facebook_colors_icon.svg',
                  width: 80.0,
                ),
                SizedBox(width: 16.0),
                BtnSocial(
                  pathIcon: 'lib/src/assets/icons/google_colors_icon.svg',
                  width: 80.0,
                ),
                SizedBox(width: 16.0),
                BtnSocial(
                  pathIcon: 'lib/src/assets/icons/apple_black_icon.svg',
                  width: 80.0,
                )
              ]),
              Container(
                margin: const EdgeInsets.only(top: 25.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: TextStyle(
                            color: AppColors.white500,
                            fontFamily: 'Poppins',
                            fontSize: 15.0)),
                    TextButton(
                        onPressed: null,
                        child: Text('Sign up',
                            style: TextStyle(
                              color: AppColors.electricViolet700,
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                            ))),
                  ],
                ),
              )
            ]),
      )),
    );
  }
}
