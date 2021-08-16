import 'package:flutter/cupertino.dart';
import 'package:leads_sticker/core/constants/colors.dart';
import 'package:leads_sticker/core/constants/inbox_messages_json.dart';
import 'package:leads_sticker/core/models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InboxScreenViewModel extends ChangeNotifier {
  String _userName = "UserName";
  String _receiverName = "recieverName";
  String _phoneNumber = "1234567";
  List<Map<String, dynamic>> _sortedMap = [];
  List<Widget> _items = [];

  InboxScreenViewModel() {
    runTheWork();
    updateItems();
  }

  String get userName => _userName;
  String get receiverName => _receiverName;
  String get phoneNumber => _phoneNumber;
  List<Map<String, dynamic>> get sortedMap => _sortedMap;
  List<Widget> get items => _items;

  void runTheWork() {
    MessagesModel messagesModel = MessagesModel.fromJson(messages);
    _userName = messagesModel.userName;
    _receiverName = messagesModel.receiverName;
    _phoneNumber = messagesModel.phoneNumber;

    print(
        "${messagesModel.userName} ${messagesModel.receiverName} ${messagesModel.phoneNumber} "
        "${messagesModel.messages}");
    reArrangeMessages(messagesModel.messages);
  }

  void reArrangeMessages(List<Map<String, dynamic>> msgs) {
    List<int> timeStamps = [];
    List<Map<String, dynamic>> sortedMap = [];
    msgs.forEach((element) {
      timeStamps.add(element["timestamp"]);
    });
    timeStamps.sort((a, b) => a.compareTo(b));
    //   print(timeStamps);

    timeStamps.forEach((post) {
      msgs.forEach((element) {
        if (element["timestamp"] == post) {
          sortedMap.add(element);
        }
      });
    });
    _sortedMap = sortedMap;
    print(sortedMap);
    //notifyListeners();
  }

  void updateItems() {
    _sortedMap.forEach((element) {
      _items.add(listItems(element["tag"], element["messageText"]));
    });
  }

  Widget listItems(
    String tag,
    String msg,
  ) {
    return Container(
      width: 80.w,
      child: Row(
        mainAxisAlignment:
            tag == "Sender" ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          tag == "Sender"
              ? CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/dynamic_assets/image_assets/profile.jpg"),
                  radius: 15.r,
                )
              : Container(),
          SizedBox(
            width: 6.w,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Container(
              constraints: BoxConstraints(minWidth: 0, maxWidth: 290.w),
              decoration: BoxDecoration(
                  color: tag == "Sender" ? Colors.grey[200] : kBlueColor,
                  borderRadius: tag == "Sender"
                      ? BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))
                      : BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(0))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(18.w, 15.h, 20.w, 13.h),
                child: Text(
                  msg,
                  maxLines: 3,
                  softWrap: true,
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: tag == "Sender" ? Colors.black : Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
