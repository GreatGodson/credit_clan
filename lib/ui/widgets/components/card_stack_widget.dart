import 'package:credit_clan_task/ui/screens/spendings/spendings_screen.dart';
import 'package:credit_clan_task/ui/theme/theme.dart';
import 'package:credit_clan_task/ui/widgets/components/text_style.dart';
import 'package:flutter/material.dart';

class CardStackWidget extends StatelessWidget {
  const CardStackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      left: 30,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, SpendingScreen.id);
        },
        child: Container(
            height: 261,
            width: 328,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 109),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        CircularStdText(
                          text: 'Josuke Jotaro',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: deepBlueTheme,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 29, left: 109),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        CircularStdText(
                          text: '@jojojotaro',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: lightDeepBlueTheme,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(
                      thickness: 2,
                      color: dividerTheme,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircularStdText(
                          text: 'Available Balance',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: lightDeepBlueTheme,
                        ),
                        Image.asset(
                          'images/visaLogo.png',
                          width: 52,
                          height: 17,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 4, bottom: 35, left: 28),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.attach_money_outlined,
                          color: deepBlueTheme,
                          size: 32,
                        ),
                        CircularStdText(
                          text: '12,469.00',
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: deepBlueTheme,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircularStdText(
                        text: '****',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: cardNumberTheme,
                      ),
                      CircularStdText(
                        text: '****',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: cardNumberTheme,
                      ),
                      CircularStdText(
                        text: '****',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: cardNumberTheme,
                      ),
                      CircularStdText(
                        text: '2077',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: cardNumberTheme,
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
