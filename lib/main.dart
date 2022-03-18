import 'package:credit_clan_task/ui/screens/bottom_nav_container/home/home_screen.dart';
import 'package:credit_clan_task/ui/screens/onBoarding/onBoarding_screen.dart';
import 'package:credit_clan_task/ui/screens/spendings/spendings_screen.dart';
import 'package:credit_clan_task/ui/screens/splash/splash_screen.dart';
import 'package:credit_clan_task/ui/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/widgets/components/bottom_nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const CreditClan());
}

class CreditClan extends StatelessWidget {
  const CreditClan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundTheme,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: iconTheme,
            ),
            color: scaffoldBackgroundTheme,
          )),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        OnBoardingScreen.id: (context) => const OnBoardingScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        BottomNavBar.id: (context) => const BottomNavBar(),
        SpendingScreen.id: (context) => const SpendingScreen(),
      },
    );
  }
}
