import 'package:credit_clan_task/components/text_style.dart';
import 'package:credit_clan_task/components/theme.dart';
import 'package:credit_clan_task/screens/week_graph_Screen.dart';
import 'package:flutter/material.dart';

import '../components/youtube_row.dart';
import 'custom_grapg_screen.dart';
import 'day_graph_screen.dart';
import 'month_graph_Screen.dart';

class SpendingScreen extends StatefulWidget {
  static const String id = 'spendings_screen';
  const SpendingScreen({Key? key}) : super(key: key);

  @override
  _SpendingScreenState createState() => _SpendingScreenState();
}

class _SpendingScreenState extends State<SpendingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2, bottom: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircularStdText(
                          text: 'Spendings',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: cardNumberColor),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.attach_money_outlined,
                      color: deepBlue,
                      size: 32,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CircularStdText(
                          text: '2,400.56',
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: deepBlue),
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              color: graphLineTheme,
                            ),
                            CircularStdText(
                                text: '12%',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: graphLineTheme),
                          ],
                        ),
                        const CircularStdText(
                            text: 'vs past month',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: lightDeepBlue),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 32.0,
                  ),
                  child: SizedBox(
                    height: 38.0,
                    child: TabBar(
                      labelStyle: const TextStyle(
                        fontFamily: 'CircularStd',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                      labelColor: scaffoldBackgroundTheme,
                      unselectedLabelColor: lightDeepBlue,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: tabBarTheme,
                      ),
                      tabs: const [
                        CircularStdText(
                          text: 'Day',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        CircularStdText(
                          text: 'Week',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        CircularStdText(
                          text: 'Month',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        CircularStdText(
                          text: 'Custom',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: const TabBarView(children: [
                    DayGraphScreen(),
                    WeekGraphScreen(),
                    MonthGraphScreen(),
                    CustomGraphScreen()
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircularStdText(
                          text: 'Schedule payments',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: dropDownColor),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: dropDownColor,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 10),
                  child: Divider(
                    thickness: 2,
                    color: Color.fromRGBO(232, 232, 233, 1),
                  ),
                ),
                const YoutubeGithubWidget(
                  title: 'Youtube Red',
                  imageName: 'youtube',
                  amount: '3.99',
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Divider(
                    thickness: 2,
                    color: Color.fromRGBO(232, 232, 233, 1),
                  ),
                ),
                const YoutubeGithubWidget(
                  title: 'Github',
                  imageName: 'github',
                  amount: '2.99',
                ),
              ],
            ),
          ),
        ));
  }
}
