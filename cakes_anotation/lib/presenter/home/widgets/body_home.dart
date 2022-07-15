import 'package:flutter/material.dart';
import 'package:project0/presenter/home/widgets/custom_floatingactionbutton.dart';
import 'package:project0/theme/app_colors.dart';

import '../../../core/app_assets.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appBarheight = Scaffold.of(context).appBarMaxHeight as double;

    final height = (MediaQuery.of(context).size.height);
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(
              AppAssets.backgroudImage,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    color: AppColors.kColorPrimary),
                child: Column(
                  children:   [
                    const Text(
                      "Cakes Anotation",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kTextColor,
                      ),
                    ),
                    const Text(
                      "Serviços em andamento: 4",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueAccent,
                      ),
                    ),
                    TextFormField(),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CustomFloatingActionButton(),
          )
        ],
      ),
    );
  }
}
