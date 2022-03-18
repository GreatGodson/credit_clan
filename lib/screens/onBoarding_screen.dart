import 'package:credit_clan_task/components/bottom_nav_bar.dart';
import 'package:credit_clan_task/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../components/on_boarding_contents.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String id = 'onBoarding_screen';

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/onBoardingBackground.png'),
        )),
        child: Padding(
          padding: const EdgeInsets.only(left: 23, right: 23, bottom: 23),
          child: Column(children: [
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: contents[i].description,
                            ),
                          ],
                        )
                      ],
                    );
                  }),
            ),
            Row(
              children: [
                Builder(
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(contents.length,
                            (index) => buildDot(index, context)),
                      ),
                    );
                  },
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, BottomNavBar.id);
                          // {
                          //   // _controller.nextPage(
                          //   //   duration: const Duration(microseconds: 200),
                          //   //   curve: Curves.bounceIn,
                          //   // );
                          // }
                        },
                        child: Row(
                          children: const [
                            Text(
                              'Start Now',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: currentIndex == index ? 13.95 : 13.95,
      width: currentIndex == index ? 13.95 : 13.95,
      margin: const EdgeInsets.only(
        right: 25.57,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: currentIndex == index
              ? const Color.fromRGBO(242, 96, 20, 1)
              : const Color.fromRGBO(255, 255, 255, 0.3)),
    );
  }
}
