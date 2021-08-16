import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RingingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: 1.sh,
            width: 1.sw,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image(
                image: AssetImage(
                    "assets/dynamic_assets/image_assets/profile.jpg"),
              ),
            ),
          ),
          Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: 1.sw,
                height: 1.sh,
                decoration:
                    new BoxDecoration(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ),
          Positioned(
            top: 100.h,
            right: 10.w,
            left: 20.w,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60.r,
                  foregroundImage: AssetImage(
                      "assets/dynamic_assets/image_assets/profile.jpg"),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Jessica Wolfie",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Ringing…",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 150.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: Colors.red[400], shape: BoxShape.circle),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
                      child: Icon(
                        Icons.call_end,
                        size: 30.r,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
