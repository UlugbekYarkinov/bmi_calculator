import 'package:flutter/material.dart';
import 'components/reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: const Color(0xFF1D1E33),)),
                Expanded(child: ReusableCard(color: const Color(0xFF1D1E33),))
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: const Color(0xFF1D1E33),)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: const Color(0xFF1D1E33),)),
                Expanded(child: ReusableCard(color: const Color(0xFF1D1E33),))
              ],
            ),
          ),
        ],
      ),
    );
  }
}