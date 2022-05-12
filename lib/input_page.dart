import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'usablecard.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const Color ActiveColor = Color(0xFF1D1E33);
const Color colorBtn = Color(0xFFEB1555);
const Color InactiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum GenderType { female, male }

GenderType selectedGender;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: primaryColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  child: UsableCard(
                      colour: selectedGender == GenderType.male
                          ? ActiveColor
                          : InactiveColor,
                      cardClild: IconTextWitget(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      )),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = GenderType.female;
                  });
                },
                child: UsableCard(
                    colour: selectedGender == GenderType.female
                        ? ActiveColor
                        : InactiveColor,
                    cardClild: IconTextWitget(
                      text: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    )),
              )),
            ],
          )),
          Expanded(
            child: UsableCard(
              colour: ActiveColor,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: UsableCard(
                  colour: ActiveColor,
                ),
              ),
              Expanded(
                child: UsableCard(
                  colour: ActiveColor,
                ),
              ),
            ],
          )),
          Container(
            color: colorBtn,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
