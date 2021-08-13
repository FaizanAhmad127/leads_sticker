import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/ui/custom_widgets/bottom_bav_bar/bottom_nav_bar_screen.dart';
import 'package:leads_sticker/ui/screens/dashboard_screen/dashboard_screen_view_model.dart';
import 'package:leads_sticker/ui/screens/onboarding_screen/onboarding_screen_model_view.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        leading: Icon(Icons.format_list_bulleted),
        backgroundColor: kBlueColor,
        centerTitle: true,
        title: Center(
          child: Column(
            children: [
              Text(
                "Lead Sticker",
                style: TextStyle(
                  fontSize: 20.sp,
                ),
              ),
              Text(
                "Automated SNS Follow Up",
                style: TextStyle(fontSize: 6.sp, letterSpacing: 3.sp),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(5.2, 5.h, 20.w, 5.h),
            child: CircleAvatar(
              radius: 15.r,
              backgroundImage:
                  AssetImage("assets/dynamic_assets/image_assets/profile.jpg"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 31.h, top: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Managing in a go,",
              style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Your dashboard is ready to use.",
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                MyCard(
                    iconData: Icons.people_alt_sharp,
                    text1: "Total",
                    text2: "Team Members",
                    text3: "1045"),
                SizedBox(
                  width: 18.w,
                ),
                MyCard(
                    iconData: Icons.notifications,
                    text1: "Pending",
                    text2: "Reminders",
                    text3: "05"),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "contact_screen");
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kBlueColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        // side: BorderSide(color: Colors.red)
                      )),
                      minimumSize:
                          MaterialStateProperty.all(Size(148.w, 49.h))),
                  child: Text(
                    "Add Contact",
                    style: TextStyle(color: Colors.white, fontSize: 13.sp),
                  ),
                ),
                SizedBox(
                  width: 18.w,
                ),
                TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.lightGreen[50],
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.r),
                                    side: BorderSide(
                                      color: Color(0xFF6AD029),
                                    ))),
                        minimumSize:
                            MaterialStateProperty.all(Size(148.w, 49.h))),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Color(0xFF6AD029),
                          size: 15.r,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Call Someone",
                          style: TextStyle(
                              color: Color(0xFF6AD029), fontSize: 13.sp),
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class MyCard extends StatelessWidget {
  final IconData iconData;
  final String text1;
  final String text2;
  final String text3;

  MyCard(
      {required this.iconData,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148.w,
      height: 153.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.only(
              left: 19.w, bottom: 14.h, top: 16.5.h, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  iconData,
                  size: 25.r,
                  color: Colors.blue[100],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                text1,
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
              Text(
                text2,
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
              SizedBox(
                height: 11.h,
              ),
              Text(
                text3,
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
