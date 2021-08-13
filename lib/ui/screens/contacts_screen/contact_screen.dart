import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/ui/screens/contacts_screen/contact_screen_view_model.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatelessWidget {
  Widget listItem() {
    return Container(
      width: 329.w,
      height: 129.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 23.w, top: 19.h, bottom: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Brandon Wolfe",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "(725) 777-4883",
                style: TextStyle(fontSize: 13.sp, color: kBlueColor),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Last message sent: 10:47PM | 01/02/21",
                style: TextStyle(fontSize: 12.sp, color: Colors.grey),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF91BC7A),
                      border: Border.all(color: Color(0xFF91BC7A)),
                    ),
                    width: 68.w,
                    height: 22.h,
                    child: Center(
                        child: Text(
                      "Label 01",
                      style: TextStyle(fontSize: 12.sp),
                    )),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFCE4EC),
                      border: Border.all(color: Color(0xFFFCE4EC)),
                    ),
                    width: 68.w,
                    height: 22.h,
                    child: Center(
                        child: Text(
                      "Label 02",
                      style: TextStyle(fontSize: 12.sp),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kBlueColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, "dashboard_screen");
            },
            child: Icon(Icons.arrow_back_sharp)),
        titleSpacing: 1,
        title: Text("Contacts"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 240.w,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.lightBlue[50],
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Colors.blue)),
                        hintText: "Search..",
                        prefixIcon: Icon(Icons.search_sharp)),
                    textAlignVertical: TextAlignVertical.bottom,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 30.h,
                  width: 77.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kBlueColor)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.w, 5.h, 5.w, 5.h),
                    child: DropdownButton(
                      items: [],
                      hint: Text(
                        "Filter",
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
              height: 16.h,
            ),
            ChangeNotifierProvider(
              create: (context) =>
                  ContactScreenViewModel(listItems: listItem()),
              builder: (context, viewModel) {
                return Container(
                  height: 530.h,
                  child: ListView.builder(
                    itemCount: Provider.of<ContactScreenViewModel>(context)
                        .items
                        .length,
                    itemBuilder: (context, index) {
                      return Provider.of<ContactScreenViewModel>(context)
                          .items[index];
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
