import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_state_controller.dart';

class HomeStateScreen extends StatelessWidget {
  // GetBuilder => update rebuild
  // GetX => Stream
  // Obx => Stream

  HomeStateController homeController = Get.put(HomeStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeStateController>(
        init: HomeStateController(),
        builder: (controller) => Scaffold(
          appBar: AppBar(
            title: Text("${controller.titles[controller.currentNavIndex]}"),
          ),
          body: SafeArea(
            child: IndexedStack(
              index: controller.currentNavIndex,
              children: controller.screens,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentNavIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: "Settings"),
            ],
            onTap: (navIndex) => controller.getCurrentNavIndex(navIndex),
          ),
        ));
  }
}
