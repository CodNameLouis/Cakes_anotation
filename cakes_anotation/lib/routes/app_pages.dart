import 'package:get/get.dart';
import 'package:project0/presenter/zip_code/zip_code_bindings.dart';

import '../presenter/home/home_bindings.dart';
import '../presenter/home/home_page.dart';
import '../presenter/zip_code/zip_code_page.dart';

class AppPages {
  AppPages._();

  static List<GetPage> pages = [
    GetPage(
      name: HomePage.route,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: ZipCodePage.route,
      page: () => const ZipCodePage(),
      binding: ZipCodeBindings(),
    ),
  ];
}
