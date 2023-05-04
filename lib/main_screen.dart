import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:calculator_mobile/provider/calculator_provider.dart';
import 'package:calculator_mobile/model/button.dart';


class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.pink[300],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 12.0),
                    alignment: Alignment.bottomRight,
                    child: Consumer<CalculatorProvider>(
                      builder: (context, state, child) {
                        return Text(
                          state.history,
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    child: Consumer<CalculatorProvider>(
                      builder: (context, state, child) {
                        return Text(
                          state.expression,
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  buttonText: 'AC',
                  buttonColor: Colors.green,
                  textColor: Colors.white,
                ),
                Button(
                  buttonText: "x²",
                  buttonColor: Colors.pink[300],
                  textColor: Colors.white,
                ),
                Button(
                  buttonText: '%',
                  buttonColor: Colors.pink[300],
                  textColor: Colors.white,
                ),
                Button(
                  buttonText: "DEL",
                  buttonColor: Colors.red,
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  buttonText: '7',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: '8',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: '9',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: "÷",
                  buttonColor: Colors.pink[300],
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  buttonText: '4',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: '5',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: '6',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: "×",
                  buttonColor: Colors.pink[300],
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  buttonText: '1',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: '2',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: '3',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: "-",
                  buttonColor: Colors.pink[300],
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  buttonText: '0',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: '.',
                  buttonColor: Colors.pink[100],
                  textColor: Colors.pink[300],
                ),
                Button(
                  buttonText: "=",
                  buttonColor: Colors.pink[300],
                  textColor: Colors.white,
                ),
                Button(
                  buttonText: '+',
                  buttonColor: Colors.pink[300],
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}