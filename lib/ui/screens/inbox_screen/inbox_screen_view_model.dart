import 'package:flutter/cupertino.dart';
import 'package:leads_sticker/core/constants/inbox_messages_json.dart';
import 'package:leads_sticker/core/models/messages_model.dart';

class InboxScreenViewModel extends ChangeNotifier {
  String _userName = "UserName";
  String _receiverName = "recieverName";
  String _phoneNumber = "1234567";
  List<Map<String, dynamic>> _sortedMap = [];

  InboxScreenViewModel() {
    runTheWork();
  }

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

  String get userName => _userName;
  String get receiverName => _receiverName;
  String get phoneNumber => _phoneNumber;
  List<Map<String, dynamic>> get sortedMap => _sortedMap;
}
