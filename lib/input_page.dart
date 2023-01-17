import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/reusable_card.dart';
import 'components/gender_card.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomCardColor = Color(0xFFEB1555);
const double bottomHeight = 80.0;

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
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: ReusableCard(
                        color: activeCardColor,
                        cardChild: const GenderCard(
                          genderIcon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: ReusableCard(
                        color: activeCardColor,
                        cardChild: const GenderCard(
                          genderIcon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                ),
                    ))
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: activeCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: activeCardColor)),
                Expanded(child: ReusableCard(color: activeCardColor))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: bottomCardColor,
            height: bottomHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
