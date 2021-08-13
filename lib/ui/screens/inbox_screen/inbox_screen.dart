import 'package:flutter/material.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/ui/screens/inbox_screen/inbox_screen_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InboxScreen extends StatelessWidget {
  Widget abc(
    String tag,
  ) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InboxScreenViewModel(),
      builder: (context, viewModel) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: kBlueColor,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "contact_screen");
                },
                child: Icon(Icons.arrow_back_sharp)),
            titleSpacing: 1,
            title: Column(
              children: [
                Text(Provider.of<InboxScreenViewModel>(context).receiverName),
                Text(Provider.of<InboxScreenViewModel>(context).phoneNumber),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
                child: Row(
                  children: [
                    Icon(
                      Icons.call_end_sharp,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Container(
              child: Padding(
            padding: EdgeInsets.all(14),
            child: ListView.builder(itemBuilder: (context, index) {
              return Container();
            }),
          )),
        );
      },
    );
  }
}
