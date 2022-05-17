import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text(
        'Cake Anotation',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.kColorPrimary),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 56);
}
