import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDeviceName;
  final String numberOfDevice;
  final String iconPath;
  final bool powerOn;
  void Function(bool)? onChanged;
  void Function()? onTap;

  SmartDeviceBox({
    super.key,
    required this.smartDeviceName,
    required this.numberOfDevice,
    required this.iconPath,
    required this.powerOn,
    required this.onChanged,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            color: powerOn ? Colors.grey[350] : Colors.grey[850],
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // image
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: CircleAvatar(
                      maxRadius: 20,
                      backgroundColor: Colors.white,
                      child: Image.asset(iconPath,
                          height: 25,
                          color: powerOn ? Colors.black : Colors.black),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: CupertinoSwitch(
                        value: powerOn,
                        onChanged: onChanged,
                      ),
                    ),
                  )
                ],
              ),

              // smart device name + switch
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: GestureDetector(
                      onTap: onTap,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // device name
                          Text(
                            smartDeviceName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: powerOn ? Colors.black : Colors.white),
                          ),
                          const SizedBox(height: 3),
                          // number of device
                          Text(
                            numberOfDevice,
                            style: TextStyle(
                              color: powerOn ? Colors.black : Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
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
