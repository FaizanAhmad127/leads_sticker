import 'package:flutter/material.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/ui/screens/inbox_screen/inbox_screen_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InboxScreenViewModel(),
      builder: (context, viewModel) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: kBlueColor,
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "contact_screen");
                  },
                  child: Icon(Icons.arrow_back_sharp)),
              titleSpacing: 1,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Provider.of<InboxScreenViewModel>(context).receiverName,
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  Text(
                    Provider.of<InboxScreenViewModel>(context).phoneNumber,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "ringing_screen");
                        },
                        child: Icon(
                          Icons.call,
                          color: Colors.greenAccent,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, "contact_details_screen");
                        },
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            body: SizedBox(
              height: 1.sh - (MediaQuery.of(context).viewInsets.bottom * 1.3),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(14.w, 20.h, 14.w, 10.h),
                  child: Column(
                    children: [
                      Container(
                          height: 460.h,
                          child: ListView.builder(
                              itemCount:
                                  Provider.of<InboxScreenViewModel>(context)
                                      .sortedMap
                                      .length,
                              itemBuilder: (context, index) {
                                return Provider.of<InboxScreenViewModel>(
                                        context)
                                    .items[index];
                              })),
                      SizedBox(
                        height: 50.h,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "reminders_screen");
                            },
                            child: Container(
                              height: 47.h,
                              width: 47.w,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Icon(
                                Icons.add,
                                color: kBlueColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 9.w,
                          ),
                          Container(
                            height: 47.h,
                            width: 290.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.r)),
                                  hintText: "Type your message..",
                                  hintStyle: TextStyle(
                                      fontSize: 14.sp, color: Colors.grey[400]),
                                  contentPadding: EdgeInsets.all(16.h),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  suffixIcon: Container(
                                    constraints: BoxConstraints(maxWidth: 70.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.message,
                                          color: Color(0xFF69BE28),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Icon(
                                          Icons.double_arrow_sharp,
                                          color: kBlueColor,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                      ],
                                    ),
                                  )),
                              style: TextStyle(
                                  fontSize: 14.sp, color: Colors.grey[400]),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
