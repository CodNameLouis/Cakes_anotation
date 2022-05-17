import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: 0,
      backgroundColor: AppColors.kColorPrimary,
      foregroundColor: AppColors.kTextColor,
      label: const Text(
        "Adicionar Novo Serviço",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: () {},
    );
  }
}
