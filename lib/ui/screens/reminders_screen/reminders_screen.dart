import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/ui/screens/reminders_screen/reminders_screen_view_model.dart';
import 'package:provider/provider.dart';

class RemindersScreen extends StatelessWidget {
  final bool isBackEnabled;
  RemindersScreen({this.isBackEnabled = true});
  Widget listViewItem() {
    return Container(
      width: 345.w,
      height: 230.h,
      child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.black, width: 0.4),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Due date",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      "Incomplete",
                      style:
                          TextStyle(fontSize: 14.sp, color: Color(0xFF69BE28)),
                    )
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  "06/08/21 5:00 AM",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "Type",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "One off",
                      style: TextStyle(fontSize: 12.sp, color: kBlueColor),
                    )
                  ],
                ),
                SizedBox(height: 5.h),
                Divider(),
                SizedBox(height: 5.h),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        style: TextStyle(
                            fontSize: 12.sp, height: 1.6, color: Colors.black),
                        text:
                            "Royez ce jeu exquis wallon, de graphie en kit mais bref."
                            " Portez ce vieux whisky au juge blond "
                            "qui fume sur son île intérieure.   "),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => print('Tap Here onTap'),
                      text: "View details",
                      style: TextStyle(
                          fontSize: 12.sp,
                          height: 1.6,
                          color: kBlueColor,
                          decoration: TextDecoration.underline),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Mark complete"),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(12.r)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: BorderSide(color: kBlueColor))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[50])),
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: isBackEnabled
            ? GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                ))
            : Container(),
        backgroundColor: Color(0xFFF2F7FC),
        title: Center(
          child: Text(
            "Reminders",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1),
          ),
        ),
      ),
      body: ChangeNotifierProvider(
        create: (context) =>
            RemindersScreenViewModel(listItems: listViewItem()),
        builder: (context, viewModel) {
          return Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
            child: ListView.builder(
                itemCount:
                    Provider.of<RemindersScreenViewModel>(context).items.length,
                itemBuilder: (context, index) {
                  return Provider.of<RemindersScreenViewModel>(context)
                      .items[index];
                }),
          );
        },
      ),
    );
  }
}
