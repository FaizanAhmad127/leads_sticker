import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/core/constants/strings.dart';
import 'package:leads_sticker/ui/custom_widgets/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.fromLTRB(25.w, 50.h, 25.w, 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kLoginWelcome1,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
              ),
              Text(
                kLoginWelcome2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                kLoginLetsSignYouIn,
                style: TextStyle(color: Color(0xFF69BE28), fontSize: 22.sp),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                height: 80.h,
                child: TextFieldWidget(
                    labelText: "Mobile number", hintText: "0315-1234567"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 80.h,
                child: TextFieldWidget(
                    labelText: "Password", hintText: "password123"),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0xFF007BFF),
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 150.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, "onboarding_screen");
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kBlueColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        // side: BorderSide(color: Colors.red)
                      )),
                      minimumSize:
                          MaterialStateProperty.all(Size(325.w, 45.h))),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
