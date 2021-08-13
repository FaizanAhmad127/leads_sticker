import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'bottom_nav_bar_view_model.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
      child: ChangeNotifierProvider(
        create: (context) => BottomNavBarViewModel(),
        builder: (context, viewModel) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Provider.of<BottomNavBarViewModel>(context, listen: false)
                      .getItemColor = 0;
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Provider.of<BottomNavBarViewModel>(context)
                          .item1Color,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Provider.of<BottomNavBarViewModel>(context)
                              .item1Color),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<BottomNavBarViewModel>(context, listen: false)
                      .getItemColor = 1;
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Provider.of<BottomNavBarViewModel>(context)
                          .item2Color,
                    ),
                    Text(
                      "Reminders",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Provider.of<BottomNavBarViewModel>(context)
                              .item2Color),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<BottomNavBarViewModel>(context, listen: false)
                      .getItemColor = 2;
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Provider.of<BottomNavBarViewModel>(context)
                          .item3Color,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Provider.of<BottomNavBarViewModel>(context)
                              .item3Color),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
