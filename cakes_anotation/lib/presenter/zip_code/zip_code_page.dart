import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/body_zip_code.dart';
import 'zip_code_controller.dart';

class ZipCodePage extends GetView<ZipCodeController> {
  const ZipCodePage({Key? key}) : super(key: key);

  static const route = '/zip_code_page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyZipCode(),
    );
  }
}
