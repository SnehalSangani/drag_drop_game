import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    body: Stack(
      children: [
        Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/bg.jpg",fit: BoxFit.cover,),
      ),
        Center(
          child: InkWell(
            onTap: () {
              Get.toNamed('home');
            },
            child: Container(
              height: 50,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue.shade200,
                border: Border.all(width: 1,color: Colors.blue.shade800),
              ),
              child: Center(child: Text("Play",style: TextStyle(fontSize: 22,color: Colors.black,letterSpacing: 1),)),
            ),
          ),
        )

      ],
    ),


    ),
    );
  }
}
