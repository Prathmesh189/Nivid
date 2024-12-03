import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';
class CommonButton extends StatelessWidget {
  final Function()? onTap;
  const CommonButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap??(){
      },
      child: Container(
        height: 7.h,
        width: 13.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: ColorsForApp.titleTextColor),
        child: Center(
          child: Text(
            "Continue",
            style: TextHelper.size18(context).copyWith(
                color: ColorsForApp.subTitleColor,
                fontFamily: 'InriaSerif'),
          ),
        ),
      ),
    );
  }
}
