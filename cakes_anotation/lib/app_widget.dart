import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project0/app_bindings.dart';
import 'package:project0/routes/app_pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialBinding: AppBindings(),
    );
  }
}
