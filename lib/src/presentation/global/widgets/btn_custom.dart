import 'package:app/src/presentation/global/colors.dart';
import 'package:flutter/material.dart';

class BtnCustom extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const BtnCustom({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 364.0,
      height: 60.0,
      child: Material(
        elevation: 3.0,
        shadowColor: AppColors.electricViolet500,
        borderRadius: BorderRadius.circular(60.0),
        child: Ink(
          decoration: BoxDecoration(
            color: AppColors.electricViolet500,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(30.0),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    color: AppColors.white50,
                    fontFamily: 'Poppins',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
