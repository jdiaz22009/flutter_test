import 'package:app/src/presentation/global/colors.dart';
import 'package:app/src/presentation/global/widgets/svg_image.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String iconPath;
  final String hintText;
  final bool showPassword;
  final Color focusColorBorder;

  const InputField({
    Key? key,
    required this.iconPath,
    required this.hintText,
    this.showPassword = false,
    this.focusColorBorder = AppColors.white80,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isPasswordVisible = false;
  bool hasFocus = false;

  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        hasFocus = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      margin: const EdgeInsets.only(top: 13.0),
      decoration: BoxDecoration(
        color: hasFocus ? AppColors.electricViolet100 : AppColors.white80,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: hasFocus
              ? widget.focusColorBorder
              : AppColors
                  .white80, // Cambia el color del borde cuando está enfocado
        ),
      ),
      child: SizedBox(
        width: 330.0,
        height: 50.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgImageWidget(
                path: widget.iconPath,
                width: 10.0,
                height: 25.0,
                color: hasFocus ? widget.focusColorBorder : AppColors.white450,
              ),
            ),
            const SizedBox(width: 3.0),
            Expanded(
              child: TextField(
                focusNode: focusNode,
                autofocus: false,
                obscureText: widget.showPassword ? !isPasswordVisible : false,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(color: AppColors.white450),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(top: -3.0),
                ),
              ),
            ),
            if (widget.showPassword)
              InkWell(
                onTap: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgImageWidget(
                    path: isPasswordVisible
                        ? 'lib/src/assets/icons/eye_icon.svg'
                        : 'lib/src/assets/icons/eye_icon_off.svg',
                    width: 10.0,
                    height: 25.0,
                    color:
                        hasFocus ? widget.focusColorBorder : AppColors.white450,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
