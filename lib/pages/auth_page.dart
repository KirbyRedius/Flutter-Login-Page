// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    int delay = 0;
    int duration = 600;
    int getDelayTime(int duration) {
      delay = delay + duration;
      return delay;
    }

    Color mainColor = const Color.fromARGB(255, 217, 0, 255);

    OutlineInputBorder inputStyle = OutlineInputBorder(
      borderSide: BorderSide(
        color: mainColor,
        width: 1.2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );

    TextStyle userTextStyle = TextStyle(
      color: Color.fromARGB(255, 217, 0, 255),
      fontSize: 17.dp,
    );

    TextStyle labelStyle = TextStyle(
      color: Colors.purple,
      fontSize: 17.dp,
    );

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/login-background.gif"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: getDelayTime(duration),
                ),
                duration: Duration(milliseconds: duration),
              ),
            ],
            child: Positioned(
              top: 50.h - 42.h / 2,
              left: 50.w - 60.w / 2,
              child: Container(
                height: 42.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: Color.fromARGB(206, 0, 0, 0),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: mainColor,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    width: 1.3,
                  ),
                ),
              ),
            ),
          ), // main container

          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: getDelayTime(duration),
                ),
                duration: Duration(milliseconds: duration),
              ),
            ],
            child: Positioned(
              top: 29.h,
              left: 50.w - 90.w / 2,
              child: Container(
                height: 15.h,
                width: 90.w,
                color: Colors.transparent,
                child: Image.asset(
                  "images/car.gif",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ), // image

          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: getDelayTime(duration),
                ),
                duration: Duration(milliseconds: duration),
              ),
            ],
            child: Positioned(
              top: 45.h,
              left: 50.w - 50.w / 2,
              child: Container(
                height: 5.h,
                width: 50.w,
                child: Material(
                  color: Colors.transparent,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      labelText: 'Login',
                      enabledBorder: inputStyle,
                      focusedBorder: inputStyle,
                      //hintStyle: labelStyle,
                      labelStyle: labelStyle,
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 8,
                        bottom: 8,
                        right: 10,
                      ),
                    ),
                    style: userTextStyle,
                  ),
                ),
              ),
            ),
          ), // login field

          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: getDelayTime(duration),
                ),
                duration: Duration(milliseconds: duration),
              ),
            ],
            child: Positioned(
              top: 52.h,
              left: 50.w - 50.w / 2,
              child: Container(
                height: 5.h,
                width: 50.w,
                child: Material(
                  color: Colors.transparent,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder: inputStyle,
                      focusedBorder: inputStyle,
                      //hintStyle: labelStyle,
                      labelStyle: labelStyle,
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 8,
                        bottom: 8,
                        right: 10,
                      ),
                    ),
                    style: userTextStyle,
                  ),
                ),
              ),
            ),
          ), // password field

          Animate(
            effects: [
              FadeEffect(
                delay: Duration(
                  milliseconds: getDelayTime(duration),
                ),
                duration: Duration(milliseconds: duration),
              ),
            ],
            child: Positioned(
              top: 60.h,
              left: 50.w - 50.w / 2,
              child: Container(
                width: 50.w,
                height: 4.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: mainColor,
                      width: 0.6,
                    ),
                    backgroundColor: mainColor,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "Let's start",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.dp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ), // final button
        ],
      ),
    );
  }
}
