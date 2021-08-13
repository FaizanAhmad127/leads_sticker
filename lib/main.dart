import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/ui/screens/contacts_screen/contact_screen.dart';
import 'package:leads_sticker/ui/screens/dashboard_screen/dashboard_screen.dart';
import 'package:leads_sticker/ui/screens/inbox_screen/inbox_screen.dart';
import 'package:leads_sticker/ui/screens/login_screen/login_screen.dart';
import 'package:leads_sticker/ui/screens/onboarding_screen/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); //Returns an instance of the WidgetsBinding... you need it to access flutter engine from flutter framework. see flutter architecture for more.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(LeadsSticker());
}

class LeadsSticker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "login_screen",
          routes: {
            "login_screen": (context) => LoginScreen(),
            "onboarding_screen": (context) => OnBoardingScreen(),
            "dashboard_screen": (context) => DashboardScreen(),
            "contact_screen": (context) => ContactScreen(),
            "inbox_screen": (context) => InboxScreen(),
          },
        );
      },
    );
  }
}
