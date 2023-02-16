import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        color: bottomCardColor,
        height: bottomHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            label.toUpperCase(),
            style: bottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
