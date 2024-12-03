import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class CommonContainer extends StatelessWidget {
    final double? height;
    final double? width;
    final Color? color;
    final String? text;
    
  const CommonContainer({super.key, this.height, this.width, this.color, this.text});

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        child: Container(
            height: height ?? 8.h,
            width: width ?? 18.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: color ?? ColorsForApp.white,
            ),
            child: Center(
                child: Text(
                    text ?? "Data",
                    style: TextHelper.size18(context).copyWith(
                        fontFamily: 'InriaSerif',
                        color: ColorsForApp.subTitleColor,
                        fontWeight: FontWeight.bold,
                        //fontSize: 3.h,
                    ),
                ),
            ),
        ),
        onTap: () => Get.dialog(
            AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                ),
                title: SizedBox(
                    width: 10.w,
                    child: Row(
                        children: [
                            Icon(Icons.info_outline),
                            SizedBox(width: 8), // Add spacing between icon and text
                            Text("This is Dialog Box"),
                        ],
                    ),
                ),
                actions: [
                    TextButton(
                        onPressed: () => Get.back(),
                        child: Text("Cancel"),
                    ),
                ],
            ),
        ),
    );
  }
}
