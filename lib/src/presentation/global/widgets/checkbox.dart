import 'package:app/src/presentation/global/colors.dart';
import 'package:flutter/material.dart';

class CheckBoxCustom extends StatefulWidget {
  final String label;
  final double width;
  final double top;

  const CheckBoxCustom(
      {Key? key, required this.label, this.width = 170.0, this.top = 8.0})
      : super(key: key);

  @override
  State<CheckBoxCustom> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxCustom> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: widget.top),
      child: SizedBox(
        width: widget.width,
        child: Row(children: [
          Transform.scale(
            scale: 1.3,
            child: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
              checkColor: AppColors.white50,
              activeColor: AppColors.electricViolet700,
            ),
          ),
          Text(
            widget.label,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15.0,
                fontWeight: FontWeight.w400),
          )
        ]),
      ),
    );
  }
}
