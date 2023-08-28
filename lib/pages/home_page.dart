import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/components/weather_banner.dart';
import 'package:smart_home/pages/smart_light.dart';
import 'package:smart_home/util/smart_device_box.dart';

import '../components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of smart devices
  List mySmartDevices = [
    // [ smartDeviceName, iconPath, powerStatus, numberOfDevice ]
    ["Smart Light", "lib/images/lamp.png", true],
    ["Smart AC", "lib/images/ac.png", false],
    ["Smart TV", "lib/images/tv.png", false],
    ["Smart Speaker", "lib/images/speaker.png", false],
  ];



  // power switched button
  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  // navigate to smart device page
  void navigateToSmartDevice (int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SmartLight()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            // custom app bar
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // welcome text
                  const Text(
                    'Hello, Ronald',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // notification text
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: const Icon(Icons.notifications_none_rounded))
                ],
              ),
            ),

            const SizedBox(height: 17),
            // weather banner
            Container(
              child: WeatherBanner(),
            ),
            const SizedBox(height: 10),

            // button taps
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey),
                child: Row(
                  children: [
                    // room
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: const Center(
                              child: Text(
                            "Room",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ))),
                    ),
                    const SizedBox(width: 10),
                    // devices
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[850]),
                          child: const Center(
                              child: Text(
                            "Devices",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ))),
                    ),
                  ],
                ),
              ),
            ),

            // smart device grid
            Expanded(
              child: GridView.builder(
                itemCount: mySmartDevices.length,
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.1,
                ),
                itemBuilder: (context, index) {
                  return SmartDeviceBox(
                    smartDeviceName: mySmartDevices[index][0],
                    iconPath: mySmartDevices[index][1],
                    powerOn: mySmartDevices[index][2],
                    numberOfDevice: '2 Devices',
                    onChanged: (value) => powerSwitchChanged(value, index),
                    onTap: () => navigateToSmartDevice(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
