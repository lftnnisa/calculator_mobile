import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_mobile/provider/calculator_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {

  final String buttonText;
  final buttonColor;
  final textColor;

  const Button({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 85, width: 85, child: Consumer<CalculatorProvider>(
      builder: (context, value, child) {
        return ElevatedButton(
          onPressed: () {
            value.operatorClick(buttonText);
          },

          child: Text(
            buttonText,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: textColor,
                fontSize: 28,
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: CircleBorder(),
            padding: EdgeInsets.all(18),
          ),
        );
      },
    ));
  }
}
