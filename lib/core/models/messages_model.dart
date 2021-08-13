import 'package:flutter/cupertino.dart';

class MessagesModel {
  String userName;
  String receiverName;
  String phoneNumber;
  List<Map<String, dynamic>> messages;

  MessagesModel(
      {required this.userName,
      required this.receiverName,
      required this.phoneNumber,
      required this.messages});

  factory MessagesModel.fromJson(Map<String, dynamic> messages) {
    List<Map<String, dynamic>> receiver = messages["recievers"];
    late String recName;
    late String phNumber;
    late List<Map<String, dynamic>> msgs;
    receiver.forEach((element) {
      recName = element["recieverName"];
      phNumber = element["phoneNumber"];
      msgs = element["messages"];
    });

    return MessagesModel(
        userName: messages["userName"],
        receiverName: recName,
        phoneNumber: phNumber,
        messages: msgs);
  }
}
