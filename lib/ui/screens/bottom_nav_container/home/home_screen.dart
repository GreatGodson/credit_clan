import 'package:credit_clan_task/ui/widgets/components/card_stack_widget.dart';
import 'package:flutter/material.dart';

import '../../../widgets/components/cash_back_widget.dart';
import '../../../widgets/components/text_style.dart';
import '../../../theme/theme.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/homeScreenBackground.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 310,
            child: Container(
              height: 539,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 140),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CashBackSafeDepositColumn(
                          imageName: 'cashBack',
                          title: 'Cashback',
                          amount: '220.54',
                        ),
                        Container(
                          height: 150,
                          width: 2,
                          color: dividerTheme,
                        ),
                        const CashBackSafeDepositColumn(
                          imageName: 'safeDeposit',
                          title: 'Safe Deposit',
                          amount: '12,800.64',
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 8),
                      child: Row(
                        children: const [
                          CircularStdText(
                              text: 'Today',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: dropDownButtonTheme),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: dropDownButtonTheme,
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: dividerTheme,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircularStdText(
                              text: 'Steam Store',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: deepBlueTheme),
                          Row(
                            children: const [
                              CircularStdText(
                                  text: '-',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: debitAmountTheme),
                              Icon(
                                Icons.attach_money_outlined,
                                color: debitAmountTheme,
                                size: 20,
                              ),
                              CircularStdText(
                                  text: '19.99',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: debitAmountTheme),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height * 0.11,
            left: MediaQuery.of(context).size.width * 0.09,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Awaiting this feature 😃')));
              },
              child: const CircleAvatar(
                backgroundColor: scaffoldBackgroundTheme,
                radius: 24,
                child: Icon(Icons.menu),
              ),
            ),
          ),
          const CardStackWidget(),
          Positioned(
            top: 120,
            left: 50,
            child: Image.asset('images/person.png'),
            width: 73,
            height: 100,
          ),
        ],
      ),
    );
  }
}
