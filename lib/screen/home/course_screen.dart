import 'package:faculty_tool_box/screen/home/topic_screen.dart';
import 'package:faculty_tool_box/utils/app_colors.dart';
import 'package:faculty_tool_box/widgets/common_button.dart';
import 'package:faculty_tool_box/widgets/common_container.dart';
import 'package:faculty_tool_box/widgets/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../utils/text_styles.dart';
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
      body: Sizer(builder: (context, orientation, deviceType)
      {
        return Stack(
          children: [
            MainScreen(),
            Positioned(
              top: 23.h,
              left: 17.w,
              child: CommonContainer(
                text: "Dicipline",
                color: ColorsForApp.titleTextColor,
              ),
            ),
            Positioned(
              top: 23.h,
              left: 41.w,
              child: CommonContainer(
                text: "Topic",
                color: ColorsForApp.titleTextColor,
              ),
            ),
            Positioned(
              top: 23.h,
              left: 65.w,
              child: CommonContainer(
                text: "Material",
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

            //Search Section
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
                buildContainerWithDicipline(name: "B-tech Mechanical")
            ),

            //Common Button(Continue)
            Positioned(
              top: 76.h,
              left: 46.w,
              child: CommonButton(
                onTap: (){
                  Get.to(TopicScreen());
                },
              ),
            )
          ],
        );

      }),
    );
  }
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

  //Container with dicipline
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
        )
    );
  }
}

