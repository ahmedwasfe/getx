import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';

class First extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(18),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<HomeController>(
                builder: (controller) => TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.redAccent,
                    focusColor: Colors.redAccent,
                      hintText: "enter value",
                      icon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) => controller.value = value,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    mini: true,
                    onPressed: () => controller.increment(),
                  ),
                  SizedBox(width: 10),
                  GetBuilder<HomeController>(
                    builder: (controller) => Text("${controller.counter}"),
                  ),
                  SizedBox(width: 10),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    mini: true,
                    onPressed: () => controller.decrement(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
