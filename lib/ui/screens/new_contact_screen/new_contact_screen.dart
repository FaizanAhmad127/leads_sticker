import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/ui/custom_widgets/dropdown_row.dart';
import 'package:leads_sticker/ui/custom_widgets/text_field_widget/text_field_widget.dart';

class NewContactScreen extends StatelessWidget {
  const NewContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Contact",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kBlueColor)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10.w, 5.h, 5.w, 5.h),
                        child: DropdownButton(
                          items: [],
                          hint: Text(
                            "Status",
                            style: TextStyle(
                              color: kBlueColor,
                            ),
                          ),
                          underline: SizedBox(),
                          iconEnabledColor: kBlueColor,
                          iconDisabledColor: kBlueColor,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                TextFieldWidget(labelText: "Name", hintText: ""),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        width: 270.w,
                        child:
                            TextFieldWidget(labelText: "Phone", hintText: "")),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[100]),
                      child: Icon(
                        Icons.add,
                        color: kBlueColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFieldWidget(labelText: "Email", hintText: ""),
                SizedBox(
                  height: 10.h,
                ),
                TextFieldWidget(labelText: "Address", hintText: ""),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 160.w,
                        child:
                            TextFieldWidget(labelText: "City", hintText: "")),
                    Container(
                        width: 160.w,
                        child: TextFieldWidget(
                            labelText: "Zip Code", hintText: "")),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFieldWidget(labelText: "Company Name", hintText: ""),
                SizedBox(
                  height: 10.h,
                ),
                TextFieldWidget(labelText: "Contact tags", hintText: ""),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 120.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kBlueColor),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w, right: 10.w),
                        child: Center(
                          child: Text(
                            "+ Custom field",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Automation",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    DropdownRow(
                      labelText: "Automated SMS",
                      dropdownText: "No Campaign",
                    ),
                    DropdownRow(
                      labelText: "Last step processed",
                      dropdownText: "No Campaign",
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Divider(),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Advanced",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    DropdownRow(
                      labelText: "Added by",
                      dropdownText: "Fiverr",
                    ),
                    DropdownRow(
                      labelText: "Managed by",
                      dropdownText: "Fiverr",
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Divider(),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40.w,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Delete contact",
                        style: TextStyle(color: Colors.red),
                      ),
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(Size(120.w, 30.h)),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(12.r)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  side: BorderSide(color: Colors.red))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFF7E1E1))),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Save & Close",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(Size(120.w, 30.h)),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(12.r)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  side: BorderSide(color: kBlueColor))),
                          backgroundColor:
                              MaterialStateProperty.all(kBlueColor)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
