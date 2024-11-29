import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/app_colors.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}
class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsForApp.primaryColor,
        body: Sizer(builder: (context, orientation, deviceType) {
          return Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/logo/mainLogo.png',
                    fit: BoxFit.cover,
                    height: 20.h,
                  )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/mainBottomImage.png',
                    fit: BoxFit.cover,
                    height: 20.h,
                  )),
              Positioned(
                top: 20.h,
                left: 0,
                child: Container(
                  height: 60.h,
                  width: 500.w,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                top: 0,
                left: 360,
                child: Container(
                  height: 15.h,
                  width: 50.w,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Center(
                      child: Text(
                        "Faculty Tool Box",
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            color: ColorsForApp.titleTextColor,
                            fontSize: 7.h,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Positioned(
                top: 98,
                left: 570,

                child: Container(
                  height: 8.h,
                  width: 40.w,
                  decoration: BoxDecoration(),
                  child: Text(
                    "Powered By Nivid Informatics",
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        color: ColorsForApp.subTitleColor,
                        fontSize: 3.h,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 80,
                child: Container(
                  height: 6.6.h,
                  width: 3.w,
                  decoration: BoxDecoration(color: ColorsForApp.titleTextColor,
                      borderRadius: BorderRadius.circular(80)),
                  child: Center(child: Text("P", style: TextStyle(
                      fontFamily: 'InriaSerif',
                      color: ColorsForApp.white,
                      fontSize: 3.h),)),
                ),
              ),
              Positioned(
                top: 180,
                left: 200,
                child: buildContainerWithAlertDialog(
                  hintText: "Dicipline",

                  color: ColorsForApp.titleTextColor,
                ),
              ),
              Positioned(
                top: 180,
                left: 490,
                child: buildContainerWithAlertDialog(
                  hintText: "Topics",
                  color: ColorsForApp.titleTextColor,
                ),
              ),
              Positioned(
                top: 180,
                left: 790,
                child: buildContainerWithAlertDialog(
                  hintText: "Material",
                  color: ColorsForApp.titleTextColor,
                ),
              ),

            ],
          );
        }));
  }
  Widget buildContainerWithAlertDialog({
    Key? key,
    double? height,
    double? width,
    Color? color,
    String? hintText,
  }) {
    return GestureDetector(
      child: Container(
        height: height ?? 52,
        width: width ?? 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: color ?? Colors.white,
        ),
        child: Center(
          child: Text(
            hintText ?? "Data",
            style: TextStyle(
              fontFamily: 'InriaSerif',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 3.h,
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

