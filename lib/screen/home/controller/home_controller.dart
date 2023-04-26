
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homecontroller extends GetxController
{
  List<RxBool> onDrag=[
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
  ];

  List images=[
    "assets/images/black.png",
    "assets/images/butterfly.png",
    "assets/images/cat.png",
    "assets/images/elephant.png",
    "assets/images/fish.png",
    "assets/images/hprse.png",
    "assets/images/parrot.png",
    "assets/images/peapock.png",
    "assets/images/pig.png",
    "assets/images/yellow.png",
  ];
  List<Color> colors=[
    Colors.pink.shade200,
    Colors.blueGrey.shade400,
    Colors.yellow,
    Colors.black,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.purple,
    Colors.green,

  ];
  List data1=[
    'black',
    'red',
    'orange',
    'grey',
    'blue',
    'brown',
    'green',
    'purple',
    'pink',
    'yellow',
  ];
  List data2=[
    'pink',
    'grey',
    'yellow',
    'black',
    'orange',
    'red',
    'blue',
    'brown',
    'purple',
    'green',
  ];

}