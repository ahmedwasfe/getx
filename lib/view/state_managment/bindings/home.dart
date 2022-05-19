import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/state_managment/bindings/first.dart';

import '../../../utils/my_bindings.dart';
import 'secound.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.redAccent,
              child: Text(
                "Screen First",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () =>
                  Get.to(() => First() /*, binding: MyBindings()*/),
            ),
            SizedBox(height: 20),
            MaterialButton(
              color: Colors.redAccent,
              child: Text(
                "Screen Seound",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => Get.to(() => Secound()),
            ),
          ],
        ),
      ),
    );
  }
}
