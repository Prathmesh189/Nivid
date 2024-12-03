import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../generator/assets.dart';
import '../utils/app_colors.dart';
import '../utils/text_styles.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            child:Image.asset(Assets.mainlogo,fit: BoxFit.fill,)
              ),
        ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                Assets.mainBottomImage,
                fit: BoxFit.fill,
                height: 17.h,
              )
          ),
          Positioned(
            top: 16.h,
            left: 0,
            child: Container(
              height: 68.h,
              width: 500.w,
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
          Positioned(
            top: 0,
            left: 27.w,
            child: Container(
              height: 10.h,
              width: 50.w,
              decoration: BoxDecoration(color: ColorsForApp.white),
              child: Center(
                  child: Text(
                    "Faculty Tool Box",
                    style: TextHelper.size26(context).copyWith(
                        fontFamily: 'InriaSerif',
                        color: ColorsForApp.titleTextColor,
                        //fontSize: 7.h,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 41.w,
            child: Container(
              height: 4.h,
              width: 40.w,
              decoration: BoxDecoration(),
              child: Text(
                "Powered By Nivid Informatics",
                style: TextHelper.size16(context).copyWith(
                    fontFamily: 'InriaSerif',
                    color: ColorsForApp.subTitleColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            right: 4.w,
            top: 9.h,
            child: Container(
              height: 6.h,
              width: 3.w,
              decoration: BoxDecoration(
                  color: ColorsForApp.titleTextColor,
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                  child: Text("P",
                      style: TextHelper.size16(context).copyWith(
                        fontFamily: 'InriaSerif',
                        color: ColorsForApp.white,
                      )
                  )),
            ),
          ),


        Positioned(
          top: 50.h,
          left: 18.w,
          child: Container(
            height: 24.h,
            width: 65.w,
            decoration: BoxDecoration(
                border: Border.all(color: ColorsForApp.borderColor),
                borderRadius: BorderRadius.circular(11)),
          ),
        ),
      ],
    );
  }
}
