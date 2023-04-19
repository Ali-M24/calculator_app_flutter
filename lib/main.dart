import 'package:calculator_app/utils/colors.dart';
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

  String userInputNumber = '';

  void buttonPressed(String text) {
    setState(() {
      userInputNumber = userInputNumber + text;
    });
  }

  Widget _getTopRow(String str1, String str2, String str3, String str4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NeumorphicButton(
          padding: EdgeInsets.all(16),
          style: buttons,
          onPressed: () {
            setState(() {
              userInputNumber = '';
            });
          },
          child: Text('$str1', style: topBtnsStyle),
        ),
        NeumorphicButton(
          padding: EdgeInsets.all(16),
          style: buttons,
          onPressed: () {
            setState(() {
              if (userInputNumber.length != 0) {
                userInputNumber =
                    userInputNumber.substring(0, userInputNumber.length - 1);
              }
            });
          },
          child: Text('$str2', style: topBtnsStyle),
        ),
        NeumorphicButton(
          padding: EdgeInsets.all(16),
          style: buttons,
          onPressed: () {},
          child: Text(' $str3 ', style: topBtnsStyle),
        ),
        NeumorphicButton(
          padding: EdgeInsets.all(16),
          style: buttons,
          onPressed: () {},
          child: Text('  $str4  ', style: topBtnsStyle),
        ),
      ],
    );
  }

  Widget _getNumbersRow(String str1, String str2, String str3, String str4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NeumorphicButton(
          padding: EdgeInsets.all(16),
          style: buttons,
          onPressed: () {
            buttonPressed(str1);
          },
          child: Text(' $str1 ', style: numberStyle),
        ),
        NeumorphicButton(
          padding: EdgeInsets.all(16),
          style: buttons,
          onPressed: () {
            buttonPressed(str2);
          },
          child: Text(' $str2 ', style: numberStyle),
        ),
        NeumorphicButton(
          padding: EdgeInsets.all(16),
          style: buttons,
          onPressed: () {
            buttonPressed(str3);
          },
          child: Text(' $str3 ', style: numberStyle),
        ),
        NeumorphicButton(
          padding: EdgeInsets.all(16),
          style: buttons,
          onPressed: () {
            buttonPressed(str4);
          },
          child: Text(' $str4  ', style: rightBtnsStyle),
        ),
      ],
    );
  }

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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              userInputNumber,
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: textGreen,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
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
                          _getTopRow("AC", "Ce", "%", "/"),
                          _getNumbersRow("7", "8", "9", "*"),
                          _getNumbersRow("4", "5", "6", "+"),
                          _getNumbersRow("1", "2", "3", "-"),
                          _getNumbersRow("00", "0", " .", "="),
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
