
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/ai_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const  Text('Geimini'),
      ),
        body:GetBuilder<HomeController>(builder: (controller) {
          return  DashChat(
            currentUser: sender,
            onSend: (message) {
              controller.sendMessage(message);
            },
            messages: controller.messages,
          );
        },)
    );
  }
}

ChatUser sender = ChatUser(id: '1',firstName: 'darshan',lastName: 'patel');
ChatUser receiver = ChatUser(id: '2',firstName: 'Niraj',lastName: 'Rajput');

