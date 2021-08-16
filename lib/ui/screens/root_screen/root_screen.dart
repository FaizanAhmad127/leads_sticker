import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/ui/screens/dashboard_screen/dashboard_screen.dart';
import 'package:leads_sticker/ui/screens/reminders_screen/reminders_screen.dart';
import 'package:leads_sticker/ui/screens/user_profile_screen/user_profile_screen.dart';
import 'package:provider/provider.dart';
import 'root_screen_view_model.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List screenList = [
      DashboardScreen(),
      RemindersScreen(
        isBackEnabled: false,
      ),
      UserProfileScreen(),
    ];
    return ChangeNotifierProvider(
        create: (context) => RootScreenViewModel(),
        builder: (context, viewModel) {
          return Scaffold(
            body:
                screenList[Provider.of<RootScreenViewModel>(context).itemIndex],
            bottomNavigationBar: Container(
              height: 55.h,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Provider.of<RootScreenViewModel>(context, listen: false)
                          .setIndex = 0;
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 25.r,
                          color: Provider.of<RootScreenViewModel>(context)
                              .item1Color,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Provider.of<RootScreenViewModel>(context)
                                  .item1Color),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Provider.of<RootScreenViewModel>(context, listen: false)
                          .setIndex = 1;
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_none_sharp,
                          size: 25.r,
                          color: Provider.of<RootScreenViewModel>(context)
                              .item2Color,
                        ),
                        Text(
                          "Reminders",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Provider.of<RootScreenViewModel>(context)
                                  .item2Color),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Provider.of<RootScreenViewModel>(context, listen: false)
                          .setIndex = 2;
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 25.r,
                          color: Provider.of<RootScreenViewModel>(context)
                              .item3Color,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Provider.of<RootScreenViewModel>(context)
                                  .item3Color),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
