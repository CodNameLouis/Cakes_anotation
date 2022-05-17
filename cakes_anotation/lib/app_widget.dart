import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project0/presenter/home/home_page.dart';

class AppWidget extends StatelessWidget {

  const AppWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return const GetMaterialApp(
         debugShowCheckedModeBanner: false,
           home: HomePage(),
       );
  }
}