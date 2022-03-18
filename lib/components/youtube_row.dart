import 'package:credit_clan_task/components/text_style.dart';
import 'package:credit_clan_task/components/theme.dart';
import 'package:flutter/material.dart';

class YoutubeGithubWidget extends StatelessWidget {
  final String imageName;
  final String title;
  final String amount;
  const YoutubeGithubWidget({
    Key? key,
    required this.title,
    required this.imageName,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 64,
          height: 58,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/$imageName.png'),
                  fit: BoxFit.fill)),
        ),
        Column(
          children: [
            CircularStdText(
                text: title,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: deepBlue),
            CircularStdText(
                text: 'Next payment: $amount',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: lightDeepBlue),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            children: const [
              Icon(
                Icons.attach_money_outlined,
                color: cardNumberColor,
                size: 20,
              ),
              CircularStdText(
                  text: '3.99/mth',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: cardNumberColor),
            ],
          ),
        ),
      ],
    );
  }
}
