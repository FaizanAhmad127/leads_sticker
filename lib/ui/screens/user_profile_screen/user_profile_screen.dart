import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/core/constants/strings.dart';
import 'package:leads_sticker/ui/custom_widgets/icon_text_Row.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: SizedBox(),
        backgroundColor: Color(0xFFF2F7FC),
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "edit_profile_screen");
            },
            child: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Center(
                child: GestureDetector(
                  child: Text(
                    "Edit",
                    style: TextStyle(color: kBlueColor, fontSize: 16.sp),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
        child: Column(
          children: [
            Container(
              height: 100.h,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
                color: kBlueColor,
                elevation: 20,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 15.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(kProfileImagePath),
                        radius: 30.r,
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "jogn123@email.com",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 180.h,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 15.h),
                  child: Column(
                    children: [
                      IconTextRow(
                        icon: Icons.call,
                        text: "(530) 436-5630",
                      ),
                      IconTextRow(
                        icon: Icons.location_on,
                        text: "2 Ketch Harbour Street Newton, NJ 07860",
                        divider: Divider(
                          thickness: 1.h,
                        ),
                      ),
                      IconTextRow(
                        icon: Icons.lock,
                        text: "1password!@#",
                        divider: Divider(
                          thickness: 1.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
