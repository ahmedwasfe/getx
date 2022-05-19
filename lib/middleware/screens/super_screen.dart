import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/services_helper.dart';

class SuperScreen extends StatelessWidget {
  const SuperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SuperScreen")),
      body: Container(
        margin: EdgeInsets.all(18),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome: "),
            ],
          ),
        ),
      ),
    );
  }
}
