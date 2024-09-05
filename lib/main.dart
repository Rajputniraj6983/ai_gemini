import 'package:ai_gemini/controller/ai_controller.dart';
import 'package:ai_gemini/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

   void main(){
     runApp(const MyApp());
   }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}



