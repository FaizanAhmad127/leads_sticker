import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/ui/custom_widgets/text_field_widget/text_field_widget.dart';

class AddingReminders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          height: 330.h,
          width: 300.w,
          child: Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFieldWidget(labelText: "Description", hintText: ""),
                  SizedBox(
                    height: 15.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: MyDropdownRow(
                        labelText: "Assigned to", dropdownText: "Fiverr"),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFieldWidget(
                    labelText: "Due Date (Optional)",
                    hintText: "",
                    suffixIcon: Icon(
                      Icons.calendar_today_sharp,
                      color: kBlueColor,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(Size(90.w, 35.h)),
                        backgroundColor: MaterialStateProperty.all(kBlueColor)),
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

class MyDropdownRow extends StatelessWidget {
  String labelText;
  String dropdownText;
  MyDropdownRow({required this.labelText, required this.dropdownText});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 14.sp,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: kBlueColor,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: DropdownButton(
              hint: Text(
                dropdownText,
                style: TextStyle(color: kBlueColor, fontSize: 14.sp),
              ),
              underline: SizedBox(),
              iconSize: 30.r,
              isExpanded: true,
              iconEnabledColor: Colors.black,
              iconDisabledColor: kBlueColor,
              icon: Icon(Icons.keyboard_arrow_down_sharp),
              items: [],
            ),
          ),
        ),
      ],
    );
  }
}
