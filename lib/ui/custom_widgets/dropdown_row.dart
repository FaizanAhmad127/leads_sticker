import 'package:flutter/material.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownRow extends StatelessWidget {
  String labelText;
  String dropdownText;
  DropdownRow({required this.labelText, required this.dropdownText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            width: 140.w,
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
      ),
    );
  }
}
