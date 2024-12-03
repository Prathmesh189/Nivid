import 'package:faculty_tool_box/screen/home/course_screen.dart';
import 'package:faculty_tool_box/screen/home/material_screen.dart';
import 'package:faculty_tool_box/screen/home/topic_screen.dart';
import 'package:get/get.dart';

import '../binding/home_binding.dart';

import 'routes.dart';

class AppPages {
  AppPages._();

  static const String INITIAL_ROUTE = Routes.COURSE_SCREEN;

  static final routes = [

    GetPage(
      name: Routes.COURSE_SCREEN,
      page: () => const CourseScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.TOPIC_SCREEN,
      page: () => const TopicScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.MATERIAL_SCREEN,
      page: () => const MaterialScreen(),
      binding: HomeBinding(),
    ),
  ];
}
