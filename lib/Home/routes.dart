



import 'package:flutter/material.dart';
import 'package:resume_app_ui/Detail/Education.dart';
import 'package:resume_app_ui/Detail/Expersion.dart';
import 'package:resume_app_ui/Detail/detail.dart';
import 'package:resume_app_ui/Detail/objective.dart';
import 'package:resume_app_ui/Detail/personal_detail.dart';
import 'package:resume_app_ui/Detail/project.dart';
import 'package:resume_app_ui/Detail/refernce.dart';
import 'package:resume_app_ui/Detail/select_objective.dart';
import 'package:resume_app_ui/Detail/skill.dart';
import 'package:resume_app_ui/Home/home.dart';
import 'package:resume_app_ui/Home/prview.dart';
import 'package:resume_app_ui/Home/splash.dart';
import 'package:resume_app_ui/PDF/pdf.dart';
class Approutes
{
static Map<String, Widget Function(BuildContext)> routes = {
'/':(context)=>SplashScreen(),
'/home':(context)=>homeScreen(),
'/det':(context)=>detailScreen(),
'/personal':(context)=>PersonalScreen(),
'/ed':(context)=>EducationScreen(),
'/ex':(context)=>ExScreen(),
'/sk':(context)=>skillScreen(),
'/ob':(context)=>obScreen(),
'/re':(context)=>rescreen(),
'/select':(context)=>selectScreen(),
'/project':(context)=>projectscreen(),
'/pdf':(context)=>pdfScreen(),
  '/prview':(context)=>prviewScreen(),

};
}
