import 'package:flutter/material.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/ui/custom_widgets/dropdown_row.dart';
import 'package:leads_sticker/ui/custom_widgets/icon_text_Row.dart';
import 'package:leads_sticker/ui/screens/contact_details_screen/contact_details_screen_view_model.dart';
import 'package:provider/provider.dart';

class ContactDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F7FC),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, "inbox_screen");
            },
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            )),
        titleSpacing: 1,
        title: Text(
          "Contact details",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "new_contact_screen");
            },
            child: Padding(
              padding: EdgeInsets.only(right: 28.w, top: 14.h, bottom: 19.h),
              child: Text(
                "Edit",
                style: TextStyle(color: kBlueColor, fontSize: 14.sp),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)),
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.only(left: 21.w, right: 10.w, top: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: (AssetImage(
                              "assets/dynamic_assets/image_assets/profile.jpg")),
                          radius: 20.r,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style:
                                  TextStyle(fontSize: 16.sp, color: kBlueColor),
                            ),
                            Text(
                              "johndoe@gmail.com",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    IconTextRow(
                      icon: Icons.call,
                      text: "(530) 436-5630",
                      divider: Divider(
                        thickness: 1.h,
                      ),
                    ),
                    IconTextRow(
                      icon: Icons.location_on,
                      text: "2 Ketch Harbour Street Newton, NJ 07860",
                      divider: Divider(
                        thickness: 1.h,
                      ),
                    ),
                    Divider(
                      thickness: 1.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Company details",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    IconTextRow(
                      icon: Icons.apartment,
                      text: "Company name",
                      divider: Divider(
                        thickness: 1.h,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            // this is the second column of dropdowns
            ChangeNotifierProvider(
              create: (context) => ContactDetailsScreenViewModel(),
              builder: (context, viewModel) {
                return Column(
                  children: [
                    Container(
                      width: 330.w,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10.w, 10.h, 5.w, 5.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Automation",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Provider.of<ContactDetailsScreenViewModel>(
                                              context,
                                              listen: false)
                                          .isAutomationDropDownClicked();
                                    },
                                    child:
                                        Provider.of<ContactDetailsScreenViewModel>(
                                                        context)
                                                    .isAutomationArrowPressed ==
                                                false
                                            ? Icon(
                                                Icons.keyboard_arrow_down_sharp,
                                                size: 30.r,
                                              )
                                            : Icon(
                                                Icons.keyboard_arrow_up_sharp,
                                                size: 30.r,
                                              ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Provider.of<ContactDetailsScreenViewModel>(
                                              context)
                                          .showAutomationDropDown !=
                                      true
                                  ? Container()
                                  : Row(
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
                                    )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 330.w,
                      //height: 50.h,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10.w, 10.h, 5.w, 5.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Advanced",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Provider.of<ContactDetailsScreenViewModel>(
                                              context,
                                              listen: false)
                                          .isAdvanceDropDownClicked();
                                    },
                                    child:
                                        Provider.of<ContactDetailsScreenViewModel>(
                                                        context)
                                                    .isAdvanceArrowPressed ==
                                                false
                                            ? Icon(
                                                Icons.keyboard_arrow_down_sharp,
                                                size: 30.r,
                                              )
                                            : Icon(
                                                Icons.keyboard_arrow_up_sharp,
                                                size: 30.r,
                                              ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Provider.of<ContactDetailsScreenViewModel>(
                                              context)
                                          .showAdvanceDropDown !=
                                      true
                                  ? Container()
                                  : Row(
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
                                    )
                            ],
                          )),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
