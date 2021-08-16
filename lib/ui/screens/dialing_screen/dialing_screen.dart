import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/ui/screens/dialing_screen/dialing_screen_view_model.dart';
import 'package:provider/provider.dart';

class DialingScreen extends StatelessWidget {
  Widget listViewItems(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "ringing_screen");
      },
      child: Container(
        width: 300.w,
        height: 115.h,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
              side: BorderSide(
                color: Colors.black45,
              )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.w, 15.h, 15.w, 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Brandon Wolfe",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Virtual number",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "Number: ",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "(725) 777-4883",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: kBlueColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
          titleSpacing: 1.w,
          backgroundColor: kBlueColor,
          leading: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, "root_screen");
              },
              child: Icon(Icons.arrow_back_rounded)),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dialing from",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                "(725) 777-4883",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ),
        body: SizedBox(
          height: 1.sh - (MediaQuery.of(context).viewInsets.bottom * 1.35),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select virtual number to dial from",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  ChangeNotifierProvider(
                    create: (context) => DialingScreenViewModel(
                        listItems: listViewItems(context)),
                    builder: (context, viewModel) {
                      return Container(
                        height: 440.h,
                        child: ListView.builder(
                            itemCount:
                                Provider.of<DialingScreenViewModel>(context)
                                    .items
                                    .length,
                            itemBuilder: (context, index) {
                              return Provider.of<DialingScreenViewModel>(
                                      context)
                                  .items[index];
                            }),
                      );
                    },
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    height: 50.h,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: "Type number..",
                        suffixIcon: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(90.w, 45.h),
                              primary: kBlueColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Dial",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
