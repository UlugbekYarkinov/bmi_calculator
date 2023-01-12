import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  late final Color color;

  ReusableCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
