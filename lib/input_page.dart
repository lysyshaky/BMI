import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'usablecard.dart';
import 'icon_content.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

int height = 180;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: UsableCard(
                    OnPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    colour: selectedGender == GenderType.male
                        ? kActiveColor
                        : kInactiveColor,
                    cardClild: IconTextWitget(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    )),
              ),
              Expanded(
                  child: UsableCard(
                      OnPress: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      colour: selectedGender == GenderType.female
                          ? kActiveColor
                          : kInactiveColor,
                      cardClild: IconTextWitget(
                        text: "FEMALE",
                        icon: FontAwesomeIcons.venus,
                      ))),
            ],
          )),
          Expanded(
            child: UsableCard(
              colour: kActiveColor,
              cardClild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kheightText,
                        ),
                        Text(
                          ' cm',
                          style: klabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0x508D8E98),
                        activeTrackColor: Color(0x90EB1555),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: 220,
                        min: 120,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: UsableCard(
                  colour: kActiveColor,
                ),
              ),
              Expanded(
                child: UsableCard(
                  colour: kActiveColor,
                ),
              ),
            ],
          )),
          Container(
            color: kcolorBtn,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kbottomContainerHeight,
          )
        ],
      ),
    );
  }
}
