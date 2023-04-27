
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/home_model.dart';

class Homecontroller extends GetxController
{

  RxList<Homemodel> qalist=<Homemodel>[
    Homemodel(image:"assets/images/black.png" ,index:0 ,key: "black",ondrop: false),
    Homemodel(image:"assets/images/butterfly.png" ,index: 1,key: "Butter",ondrop: false),
    Homemodel(image:"assets/images/cat.png" ,index: 2,key:"cat" ,ondrop:false ),
    Homemodel(image:"assets/images/elephant.png" ,index:3 ,key:"ele" ,ondrop:false ),
    Homemodel(image:"assets/images/fish.png",index: 4,key:"fish" ,ondrop: false),
    Homemodel(image:"assets/images/hprse.png",index: 5,key:"horse" ,ondrop: false),
    Homemodel(image:"assets/images/parrot.png",index:6 ,key: "parrot",ondrop: false),
    Homemodel(image:"assets/images/peapock.png",index: 7,key: "pea",ondrop: false),
    Homemodel(image:"assets/images/pig.png",index:8 ,key: "pig",ondrop:false ),
    Homemodel(image:"assets/images/yellow.png",index: 9,key: "yellow",ondrop:false ),


  ].obs;
  RxList<Homemodel> anlist=<Homemodel>[
    Homemodel(color:Colors.pink.shade200 ,index:8 ,key:"pig" ,ondrop: false),
    Homemodel(color:Colors.blueGrey.shade400,index:3 ,key:"ele" ,ondrop: false),
    Homemodel(color:Colors.yellow,index: 9,key: "yellow",ondrop: false),
    Homemodel(color:Colors.black,index: 0,key: "black",ondrop: false),
    Homemodel(color:Colors.orange, index: 2,key:"cat" ,ondrop: false),
    Homemodel(color:Colors.red,index: 1,key: "Butter",ondrop: false),
    Homemodel(color:Colors.blue,index:4 ,key:"fish" ,ondrop: false),
    Homemodel(color:Colors.brown,index:5 ,key:"horse" ,ondrop: false),
    Homemodel(color:Colors.purple, index: 7,key:"pea" ,ondrop: false),
    Homemodel(color:Colors.green, index: 6,key: "parrot",ondrop: false),

  ].obs;

}