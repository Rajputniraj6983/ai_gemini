
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';

import '../screen/homepage.dart';

class HomeController extends GetxController {
  final gemini = Gemini.instance;

  RxList<ChatMessage> messages = [
    ChatMessage(user: sender, createdAt: DateTime.now(), text: 'Hello Niraj?'),
  ].obs;

  Future<void> sendMessage(ChatMessage message) async {
    messages.insert(0, message);
    await gemini.text(message.text!).then((value) {
      messages.insert(0,
          ChatMessage(
            user: receiver,
            createdAt: DateTime.now(),
            text: value!.output!,
          ));
    });
    update(); //
  }
}
