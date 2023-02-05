import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData? iconData;

  const RoundIconButton({
    Key? key,
    required this.onPressed,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      elevation: 10.0,
      child: Icon(iconData),
    );
  }
}
