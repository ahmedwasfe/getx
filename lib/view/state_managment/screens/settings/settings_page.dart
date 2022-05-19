import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.redAccent,
              child: Text(
                "Show Message",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: CustomSnackBarContent(
                        titleMessage: "Oh snap!",
                        errorMessage:
                            "The Email Address is already in use! PLease try again later with differnt email",
                    color: Colors.green,
                    bubbles: "assets/images/bubbles_success.svg",
                    iconMessage: "assets/images/success.svg"),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSnackBarContent extends StatelessWidget {
  const CustomSnackBarContent(
      {Key? key,
      required this.titleMessage,
      required this.errorMessage,
      required this.color,
      required this.bubbles,
      required this.iconMessage})
      : super(key: key);
//assets/images/bubbles_fail.svg
  // assets/images/fail.svg
  final String titleMessage, errorMessage;
  final Color color;
  final String bubbles, iconMessage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(16),
          decoration:  BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: [
              const SizedBox(width: 48),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$titleMessage",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      "$errorMessage",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius:
                 BorderRadius.only(bottomLeft: Radius.circular(20)),
            child: SvgPicture.asset(
              "$bubbles",
              height: 48,
              width: 40,
            ),
          ),
        ),
        Positioned(
            top: -20,
            left: 0,
            child: InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    "$iconMessage",
                    height: 40,
                  ),
                  Positioned(
                      top: 10,
                      child: SvgPicture.asset(
                        "assets/images/close.svg",
                        height: 16,
                      )),
                ],
              ),
              onTap: () {
                Navigator.of(context);
                print("Click");
              },
            )),
      ],
    );
  }
}
