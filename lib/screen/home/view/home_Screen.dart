
import 'package:drag_drop_game/screen/home/controller/home_controller.dart';
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
        body: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 660,
                  width: 130,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Draggable(
                          data: homecontroller.data1[index],
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Image.asset("${homecontroller.images[index]}"),
                          ),
                          feedback: Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("${homecontroller.images[index]}"),
                          ),
                          onDragCompleted: () {
                            homecontroller.images.removeAt(index);
                          },
                        ),
                      );
                    },
                    itemCount: homecontroller.images.length,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Container(
                  height: 660,
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
                                color: homecontroller.colors[index],
                              ),
                            );
                          },
                          onWillAccept: (data) {
                            return data == homecontroller.data1;
                          },
                          onAccept: (data) {
                            homecontroller.onDrag[index].value = true  ;
                            print("drag complete");
                            homecontroller.colors.removeAt(index);
                          },
                        ),
                      );
                    },
                    itemCount: homecontroller.colors.length,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
