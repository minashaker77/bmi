import 'package:bmi/consts.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({required this.advice, required this.bmiState, required this.result});
final String bmiState;
final String result;
final String advice;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(15),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Your Result',
                      style: labelTextStyle,
                    )),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2.0, 3.0),
                            color: Colors.black54,
                            blurRadius: 3,
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          result,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade900),
                        ),
                        Text(
                          bmiState,
                          style: TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent),
                        ),
                        Text(
                          advice,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.orange),
                        textAlign: TextAlign.center,),

                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
