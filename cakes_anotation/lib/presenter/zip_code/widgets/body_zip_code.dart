import 'package:flutter/material.dart';

import '../../../core/app_assets.dart';

class BodyZipCode extends StatelessWidget {
  const BodyZipCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = (MediaQuery.of(context).size.height);
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: SizedBox(
        height: height,
        width: width,
        child: Image.asset(
          AppAssets.backgroudImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
