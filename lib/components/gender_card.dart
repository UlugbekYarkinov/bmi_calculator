import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final String label;

  const GenderCard({Key? key,
    required this.genderIcon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
