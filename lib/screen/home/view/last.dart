import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class last extends StatefulWidget {
  const last({Key? key}) : super(key: key);

  @override
  State<last> createState() => _lastState();
}

class _lastState extends State<last> {
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
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/images/star.png",fit: BoxFit.contain,),
          ),

          Center(
            child: Container(
              height: 300,
              width: 300,
              child: Image.asset("assets/images/done1.png",fit: BoxFit.cover,),
            ),
          ),


        ],
      ),

    ));
  }
}
