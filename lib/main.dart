import 'package:drag_drop_game/screen/home/view/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => home(),
      },
    ),
  );
}