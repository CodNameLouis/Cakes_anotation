import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './home_controller.dart';
import 'widgets/body_home.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyHome(),
    );
  }
}
