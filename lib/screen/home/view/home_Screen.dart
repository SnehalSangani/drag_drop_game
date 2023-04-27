
import 'package:drag_drop_game/screen/home/controller/home_controller.dart';
import 'package:drag_drop_game/screen/home/model/home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Drag - Drop"),
        ),
        body: Obx(
          () =>  Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 720,
                    width: 130,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Draggable(
                            data: homecontroller.qalist[index].key,
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset("${homecontroller.qalist[index].image}"),
                            ),
                            feedback: Container(
                              height: 100,
                              width: 100,
                              child: Image.asset("${homecontroller.qalist[index].image}"),
                            ),
                            onDragCompleted: () {
                              print(homecontroller.qalist[index].image);
                               Container();
                                print(homecontroller.anlist.length);
                               homecontroller.qalist.removeAt(index);
                               homecontroller.anlist.removeAt(homecontroller.anlist[index].index!);
                            },

                          ),
                        );
                      },
                      itemCount: homecontroller.qalist.length,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 720,
                    width: 130,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DragTarget(
                            builder: (context, candidateData, rejectedData) {
                              return Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: homecontroller.anlist[index].color,
                                ),
                              );
                            },
                            onWillAccept: (data) {
                              return data == homecontroller.anlist[index].key;
                            },
                            onAccept: (data) {
                             homecontroller.anlist[index]=Homemodel(
                               image: homecontroller.qalist[index].image,key: homecontroller.anlist[index].key,ondrop: true
                             );

                            },
                          ),
                        );
                      },
                      itemCount: homecontroller.anlist.length,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
