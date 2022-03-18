import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

final onBoardingMessageStyle = GoogleFonts.frankRuhlLibre(
    textStyle: const TextStyle(
        fontSize: 58.0,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontWeight: FontWeight.w900));

class OnBoardingContent {
  Widget description;

  OnBoardingContent({required this.description});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
    description: onBoardingMessage,
  ),
  OnBoardingContent(
    description: onBoardingMessage,
  ),
  OnBoardingContent(
    description: onBoardingMessage,
  ),
];

Column get onBoardingMessage {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Smart',
            style: onBoardingMessageStyle,
          ),
        ],
      ),
      Row(
        children: [
          Text(
            'Savings',
            style: onBoardingMessageStyle,
          ),
        ],
      )
    ],
  );
}
