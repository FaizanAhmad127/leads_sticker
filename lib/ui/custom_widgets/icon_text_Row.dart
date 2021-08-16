import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconTextRow extends StatelessWidget {
  final IconData icon;
  final String text;
  Widget divider;
  IconTextRow(
      {required this.icon,
      required this.text,
      this.divider = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        divider,
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Icon(
              icon,
              color: Color(0xFFC9DCF0),
            ),
            SizedBox(
              width: 15.w,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 210.w),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
                maxLines: 3,
              ),
            )
          ],
        ),
      ],
    );
  }
}
