import 'package:flutter/material.dart';

import '../contants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.labelButton,
    required this.onPressed,
  }) : super(key: key);

  final String labelButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            labelButton,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
