import 'package:faculty_tool_box/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../generator/assets.dart';
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
                    Assets.mainlogo,
                    fit: BoxFit.fill,
                    height: 16.h,
                  )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    Assets.mainBottomImage,
                    fit: BoxFit.fill,
                    height: 17.h,
                  )),
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
                top: 23.h,
                left: 17.w,
                child: buildContainerWithAlertDialog(
                  hintText: "Dicipline",
                  color: ColorsForApp.titleTextColor,
                ),
              ),
              Positioned(
                top: 23.h,
                left: 41.w,
                child: buildContainerWithAlertDialog(
                  hintText: "Topics",
                  color: ColorsForApp.titleTextColor,
                ),
              ),
              Positioned(
                top: 23.h,
                left: 65.w,
                child: buildContainerWithAlertDialog(
                  hintText: "Material",
                  color: ColorsForApp.titleTextColor,
                ),
              ),
              Positioned(
                top: 34.h,
                left: 18.w,
                child: buildContainer(
                    color: ColorsForApp.subTitleLightColor, text: "Dicipline"),
              ),
              Positioned(
                top: 34.h,
                left: 42.w,
                child: buildContainer(
                    color: ColorsForApp.subTitleLightColor, text: "Topic"),
              ),
              Positioned(
                top: 34.h,
                left: 66.w,
                child: buildContainer(
                    color: ColorsForApp.subTitleLightColor, text: "Material"),
              ),

              //Serach Container
              Positioned(
                top: 42.h,
                left: 18.w,
                child: Container(
                  height: 5.h,
                  width: 64.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText:"Select Dicipline",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: ColorsForApp.subTitleLightColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsForApp.subTitleLightColor)
                      )
                    ),
                  ),
                ),
              ),

              // Container with all diciplines
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
              Positioned(
                  top: 54.h,
                  left: 20.w,
                  child: buildContainerWithDicipline(name: "MBA-Operation")),
              Positioned(
                  top: 60.h,
                  left: 20.w,
                  child: buildContainerWithDicipline(
                      name: "M tech-Project Management")),
              Positioned(
                  top: 66.h,
                  left: 20.w,
                  child: buildContainerWithDicipline(name: "MBA-HealthCare")),
              Positioned(
                  top: 54.h,
                  left: 51.w,
                  child: buildContainerWithDicipline(
                      name: "B-tech Manufacturing Management")),
              Positioned(
                  top: 60.h,
                  left: 51.w,
                  child:
                      buildContainerWithDicipline(name: "B-tech Mechanical")),

              // Continune Button
              Positioned(
                top: 76.h,
                left: 46.w,
                child: GestureDetector(
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
                ),
              )
            ],
          );
        }));
  }

  // buid container
  Widget buildContainer({
    Key? key,
    double? height,
    double? width,
    Color? color,
    String? text,
  }) {
    return Container(
      height: height ?? 6.h,
      width: width ?? 16.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          border: Border.all(color: ColorsForApp.subTitleLightColor)),
      child: Center(
          child: Text(
        text ?? "Data",
        style: TextHelper.size16(context).copyWith(
          fontFamily: 'InriaSerif',
        ),
      )),
    );
  }

  //Buid Container with alert dialog box
  Widget buildContainerWithAlertDialog({
    Key? key,
    double? height,
    double? width,
    Color? color,
    String? hintText,
  }) {
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
            hintText ?? "Data",
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

  // container with diciplines
  Widget buildContainerWithDicipline({
    Key? key,
    double? height,
    double? width,
    Color? color,
    String? name,
    
  }) {
    return Container(
        height: height ?? 5.h,
        width: width ?? 30.w,
        decoration: BoxDecoration(
            border: Border.all(color: ColorsForApp.borderColor),
            borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Text(
            name ?? "Data",
            style: TextHelper.size13(context).copyWith(
              fontFamily: 'InriaSerif',
              color: ColorsForApp.subTitleColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
