
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

        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/bg.jpg",fit: BoxFit.cover,),
            ),
            Obx(
                  () =>  Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 770,
                        width: 130,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Draggable(
                                data: homecontroller.qalist[index].key,
                                child: homecontroller.qalist[index].ondrop==false?Container(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset("${homecontroller.qalist[index].image}"),
                                ):SizedBox(),
                                feedback: homecontroller.qalist[index].ondrop==false?Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset("${homecontroller.qalist[index].image}"),
                                ):SizedBox(),
                                onDragCompleted: () {
                                  print(homecontroller.qalist[index].image);
                                  Container();
                                  // print(homecontroller.anlist.length);
                                  // homecontroller.qalist.removeAt(index);
                                  homecontroller.qalist[index].ondrop = true;
                                  // homecontroller.anlist.removeAt(homecontroller.anlist[index].index!);
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
                        height: 770,
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
                                  // homecontroller.anlist[index]=Homemodel(
                                  //   image: homecontroller.qalist[index].image,key: homecontroller.anlist[index].key,ondrop: true
                                  // );
                                  homecontroller.anlist.removeAt(homecontroller.qalist[index].index!);
                                },
                              ),
                            );
                          },
                          itemCount: homecontroller.anlist.length,
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
             Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: (){
                      Get.toNamed('last');
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        border: Border.all(width: 2,color: Colors.purple),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("Done",style: TextStyle(
                          fontSize: 20,color: Colors.black
                        ),),
                      ),
                    ),
                  ),
                ),
              ),

          ],
        )
      ),
    );
  }
}
