import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/ui/screens/adding_reminders/adding_reminders.dart';
import 'package:leads_sticker/ui/screens/contact_details_screen/contact_details_screen.dart';
import 'package:leads_sticker/ui/screens/contacts_screen/contact_screen.dart';
import 'package:leads_sticker/ui/screens/dashboard_screen/dashboard_screen.dart';
import 'package:leads_sticker/ui/screens/dialing_screen/dialing_screen.dart';
import 'package:leads_sticker/ui/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:leads_sticker/ui/screens/inbox_screen/inbox_screen.dart';
import 'package:leads_sticker/ui/screens/login_screen/login_screen.dart';
import 'package:leads_sticker/ui/screens/new_contact_screen/new_contact_screen.dart';
import 'package:leads_sticker/ui/screens/onboarding_screen/onboarding_screen.dart';
import 'package:leads_sticker/ui/screens/reminders_screen/reminders_screen.dart';
import 'package:leads_sticker/ui/screens/ringing_screen/ringing_screen.dart';
import 'package:leads_sticker/ui/screens/root_screen/root_screen.dart';
import 'package:leads_sticker/ui/screens/user_profile_screen/user_profile_screen.dart';

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
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(
                new FocusNode()); // to keep down the soft keypad after done typing in textfield etc
            print("Tapped, main.dart");
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: "onboarding_screen",
            routes: {
              "login_screen": (context) => LoginScreen(),
              "onboarding_screen": (context) => OnBoardingScreen(),
              "root_screen": (context) => RootScreen(),
              "dashboard_screen": (context) => DashboardScreen(),
              "contact_screen": (context) => ContactScreen(),
              "inbox_screen": (context) => InboxScreen(),
              "contact_details_screen": (context) => ContactDetailsScreen(),
              "reminders_screen": (context) => RemindersScreen(),
              "new_contact_screen": (context) => NewContactScreen(),
              "dialing_screen": (context) => DialingScreen(),
              "ringing_screen": (context) => RingingScreen(),
              "adding_reminders": (context) => AddingReminders(),
              "user_profile_screen": (context) => UserProfileScreen(),
              "edit_profile_screen": (context) => EditProfileScreen(),
            },
          ),
        );
      },
    );
  }
}
