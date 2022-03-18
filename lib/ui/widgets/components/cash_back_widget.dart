import 'package:credit_clan_task/ui/widgets/components/text_style.dart';
import 'package:credit_clan_task/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class CashBackSafeDepositColumn extends StatelessWidget {
  final String imageName;
  final String title;
  final String amount;
  const CashBackSafeDepositColumn(
      {Key? key,
      required this.imageName,
      required this.title,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/$imageName.png',
          width: 56,
          height: 56,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 4),
          child: CircularStdText(
            text: title,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: lightDeepBlueTheme,
          ),
        ),
        Row(
          children: [
            const Icon(Icons.attach_money_outlined),
            CircularStdText(
              text: amount,
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: deepBlueTheme,
            ),
          ],
        ),
      ],
    );
  }
}
