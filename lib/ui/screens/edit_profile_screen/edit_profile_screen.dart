import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/core/constants/strings.dart';
import 'package:leads_sticker/ui/custom_widgets/text_field_widget/text_field_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leadingWidth: 0,
          leading: SizedBox(),
          backgroundColor: Color(0xFFF2F7FC),
          titleSpacing: 30.w,
          title: Text(
            "Edit Profile",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Center(
                  child: GestureDetector(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color(0xFf69BE28),
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 10.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage: AssetImage(kProfileImagePath),
                  radius: 40.r,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Upload image",
                  style: TextStyle(
                    color: kBlueColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              TextFieldWidget(labelText: "Full name", hintText: "John Doe"),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(labelText: "Phone", hintText: "(507) 438 12349"),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                  labelText: "Email", hintText: "jhondoe@email.com"),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                labelText: "Password",
                hintText: "password123",
                suffixIcon: Icon(Icons.visibility_off),
              ),
              SizedBox(
                height: 70.h,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                    minimumSize: MaterialStateProperty.all(Size(1.sw, 45.h)),
                    backgroundColor: MaterialStateProperty.all(kBlueColor)),
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
