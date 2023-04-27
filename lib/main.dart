import 'package:drag_drop_game/screen/home/view/first_screen.dart';
import 'package:drag_drop_game/screen/home/view/home_Screen.dart';
import 'package:drag_drop_game/screen/home/view/last.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => first(),
        'home':(p0) => home(),
        'last':(p0) => last(),
      },
    ),
  );
}