import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_state_controller.dart';

import 'home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomePageController homeController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          // GetX and GetBuilder same way but the lates using obs
          child: GetX<HomePageController>(
            init: HomePageController(),
            builder: ((controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                        child: Icon(Icons.add),
                        mini: true,
                        onPressed: () {
                          controller.increment();
                          controller.sumNumbers();
                        }),
                    SizedBox(width: 10),
                    Text(
                      "${controller.counter.value}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                        child: Icon(Icons.remove),
                        mini: true,
                        onPressed: () {
                          controller.decrement();
                          controller.minNumbers();
                        }),
                  ],
                )),
          ),
        ),
        SizedBox(height: 50),
        GetX<HomePageController>(builder: ((controller) => Text("The Sum Is: ${controller.sum}"))),
        SizedBox(height: 50),
        // Using Obx
        GetX<HomePageController>(builder: (controoler) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                child: Icon(Icons.add),
                mini: true,
                onPressed: () {
                  homeController.incrementX();
                }),
            SizedBox(width: 10),
            Text(
              "${homeController.x.value}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            FloatingActionButton(
                child: Icon(Icons.remove),
                mini: true,
                onPressed: () {
                  homeController.decrementX();
                }),
          ],
        )),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
