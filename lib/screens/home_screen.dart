import 'package:credit_clan_task/screens/spendings_screen.dart';
import 'package:flutter/material.dart';
import 'package:credit_clan_task/components/theme.dart';
import '../components/cash_back_widget.dart';
import '../components/text_style.dart';

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
                          color: const Color.fromRGBO(232, 232, 233, 1),
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
                              color: dropDownColor),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: dropDownColor,
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Color.fromRGBO(232, 232, 233, 1),
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
                              color: deepBlue),
                          Row(
                            children: const [
                              CircularStdText(
                                  text: '-',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: debitColor),
                              Icon(
                                Icons.attach_money_outlined,
                                color: debitColor,
                                size: 20,
                              ),
                              CircularStdText(
                                  text: '19.99',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: debitColor),
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
            height: MediaQuery.of(context).size.height * 0.13,
            left: MediaQuery.of(context).size.width * 0.08,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Awaiting this feature 😃')));
              },
              child: const CircleAvatar(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                radius: 24,
                child: Icon(Icons.menu),
              ),
            ),
          ),
          Positioned(
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
                                color: deepBlue,
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
                                color: lightDeepBlue,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Divider(
                            thickness: 2,
                            color: Color.fromRGBO(232, 232, 233, 1),
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
                                color: lightDeepBlue,
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
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 35, left: 28),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.attach_money_outlined,
                                color: deepBlue,
                                size: 32,
                              ),
                              CircularStdText(
                                text: '12,469.00',
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: deepBlue,
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
                              color: cardNumberColor,
                            ),
                            CircularStdText(
                              text: '****',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: cardNumberColor,
                            ),
                            CircularStdText(
                              text: '****',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: cardNumberColor,
                            ),
                            CircularStdText(
                              text: '2077',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: cardNumberColor,
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ),
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
