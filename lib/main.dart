import 'package:calculator_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(CalculatorApplication());
}

class CalculatorApplication extends StatefulWidget {
  const CalculatorApplication({super.key});

  @override
  State<CalculatorApplication> createState() => _CalculatorApplicationState();
}

class _CalculatorApplicationState extends State<CalculatorApplication> {
  static const TextStyle numberStyle = TextStyle(
    fontSize: 32.0,
    color: Colors.white,
  );
  static const TextStyle rightBtnsStyle = TextStyle(
    fontSize: 32.0,
    color: Colors.redAccent,
  );
  static const TextStyle topBtnsStyle = TextStyle(
    fontSize: 32.0,
    color: Colors.greenAccent,
  );
  static NeumorphicStyle buttons = NeumorphicStyle(
    color: backgroundGreyDark,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: backgroundGrey,
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: backgroundGreyDark,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      height: 100,
                      color: backgroundGrey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text('AC', style: topBtnsStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text('Ce', style: topBtnsStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' % ', style: topBtnsStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text('  /  ', style: topBtnsStyle),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 7 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 8 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 9 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' x  ', style: rightBtnsStyle),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 4 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 5 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 6 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' +  ', style: rightBtnsStyle),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 1 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 2 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 3 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text('  -  ', style: rightBtnsStyle),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text('00', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' 0 ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' . ', style: numberStyle),
                              ),
                              NeumorphicButton(
                                padding: EdgeInsets.all(16),
                                style: buttons,
                                onPressed: () {},
                                child: Text(' = ', style: rightBtnsStyle),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    flex: 7,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
