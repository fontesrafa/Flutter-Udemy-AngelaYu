import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/contants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  final String? bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Your Result',
                  style: kTitleResultsPageTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult!,
                      style: kBMIResultTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kInterpretationTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              labelButton: 'RE-CALCULATE',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
