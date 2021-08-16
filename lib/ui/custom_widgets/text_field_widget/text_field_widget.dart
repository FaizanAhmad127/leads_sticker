import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads_sticker/ui/custom_widgets/text_field_widget/text_field_widget_view_model.dart';
import 'package:provider/provider.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Widget suffixIcon;

  TextFieldWidget(
      {required this.labelText,
      required this.hintText,
      this.suffixIcon = const SizedBox()});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TextFieldWidgetViewModel(),
      builder: (context, viewModel) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Provider.of<TextFieldWidgetViewModel>(context)
                      .labelTextColor),
            ),
            SizedBox(height: 5.h),
            Container(
              height: 45.h,
              child: TextField(
                focusNode:
                    Provider.of<TextFieldWidgetViewModel>(context).focusNode,
                style: TextStyle(
                    color: Provider.of<TextFieldWidgetViewModel>(context)
                        .labelTextColor),
                // onTap: () {
                //   print("onTap");
                //   Provider.of<TextFieldWidgetViewModel>(context, listen: false)
                //       .labelTextColor = Colors.blue;
                // },
                decoration: InputDecoration(
                  suffixIcon: suffixIcon,
                  filled: true,
                  hintText: hintText,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: Color(0xFF2C78C4))),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
