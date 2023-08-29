// ignore_for_file: library_private_types_in_public_api, unused_element, unnecessary_import, unused_import

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/icons.dart';

import '../all_shared.dart';

class Speedometer extends StatefulWidget {
  const Speedometer({super.key});

  @override
  _SpeedometerState createState() => _SpeedometerState();
}

class _SpeedometerState extends State<Speedometer> {
  double _speed = 10;

  void _updateSpeed(double newSpeed) {
    setState(() {
      _speed = newSpeed;
    });
  }

  @override
  Widget build(BuildContext context) {
    double roundedSpeed = double.parse(_speed.toStringAsFixed(1));

    return Center(
        child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 98,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 155, 152, 236),
                Colors.white,
              ],
              stops: [0.15, .55],
            ),
          ),
        ),
        Container(
          width: 86,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: AppIcons.svgWidget(AppIcons.ellipse),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Transform.rotate(
              // angle: pi * (roundedSpeed - 1) / 14,
              angle: pi * (roundedSpeed - 1 + 0) / 14,
              child: Padding(
                padding: const EdgeInsets.only(right: 38),
                child: Image.asset(
                  AppIcons.speedArrow,
                ),
              ),
            ),
            // 18.h,
            Text(
              '$roundedSpeed km/h',
              style: AppStyles.plainTextMedium
                  .andColor(Colors.black)
                  .andWeight(FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            29.h,

            /// потрогать поведение стрелки ползунком
            // SizedBox(
            //   width: 160,
            //   child: Slider(
            //     value: _speed,
            //     min: 1,
            //     max: 15,
            //     onChanged: _updateSpeed,
            //   ),
            // ),
          ],
        ),
      ],
    ));
  }
}
