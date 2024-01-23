import 'package:app/src/presentation/global/colors.dart';
import 'package:app/src/presentation/global/widgets/svg_image.dart';
import 'package:flutter/material.dart';

class BtnSocial extends StatelessWidget {
  final String pathIcon;
  final String? title;
  final double? width;
  final double? height;

  const BtnSocial({
    Key? key,
    required this.pathIcon,
    this.title,
    this.width = 364.0,
    this.height = 60.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13.0),
      child: SizedBox(
        width: width,
        height: height,
        child: Ink(
          decoration: BoxDecoration(
            color: AppColors.white50,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: AppColors.white200),
          ),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(16.0),
            child: Row(
              children: [
                if (title != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    child: SvgImageWidget(
                      path: pathIcon,
                      width: 25.0,
                      height: 25.0,
                    ),
                  )
                else
                  Expanded(
                      child: Align(
                          child: SvgImageWidget(
                              path: pathIcon, width: 25.0, height: 25.0))),
                if (title != null)
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        title!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
