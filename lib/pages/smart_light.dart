import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smart_home/components/temp_tiles.dart';
import 'package:smart_home/pages/home_page.dart';
import 'package:smart_home/util/percent.dart';
import 'package:smart_home/util/watts.dart';

class SmartLight extends StatefulWidget {
  const SmartLight({super.key});

  @override
  State<SmartLight> createState() => _SmartLightState();
}

class _SmartLightState extends State<SmartLight> {

  // navigate to back home page
  void navigateToHomePage (int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          // custom appBar
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: CircleAvatar(
                        maxRadius: 18,
                        backgroundColor: Colors.grey[300],
                        child: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black,
                        )),
                  ),
                  const Text(
                    'Smart Light',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    maxRadius: 18,
                    backgroundColor: Colors.grey[300],
                    child: Image.asset(
                      'lib/images/dots.png',
                      height: 20,
                    ),
                  )
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),
          // watt tiles
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 55,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyWatts(
                    WattCount: '  8 watt  ',
                    isSelected: true,
                  ),
                  const SizedBox(width: 10),
                  MyWatts(
                    WattCount: '  9 watt  ',
                    isSelected: false,
                  ),
                  const SizedBox(width: 10),
                  MyWatts(
                    WattCount: '12.5 watt',
                    isSelected: false,
                  ),
                  const SizedBox(width: 10),
                  MyWatts(
                    WattCount: '17 watt',
                    isSelected: false,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15),
          // smart device controller
          const Column(
            children: [
              Text(
                'Controller',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),

              SizedBox(height: 20),
              // percent indicator
              MyPercent(),

              SizedBox(height: 25),
              // Temp horizontal icon tiles
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TempTiles(
                    isSelected: true,
                    tempImagePath: 'lib/images/auto.png',
                    tempType: 'Auto',
                  ),
                  TempTiles(
                    isSelected: false,
                    tempImagePath: 'lib/images/snow.png',
                    tempType: 'Cool',
                  ),
                  TempTiles(
                    isSelected: false,
                    tempImagePath: 'lib/images/sun.png',
                    tempType: 'Day',
                  ),
                  TempTiles(
                    isSelected: false,
                    tempImagePath: 'lib/images/crescent-moon.png',
                    tempType: 'Night',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Power consumption',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      '8 watt Smart light',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.grey[850],
                                child: Image.asset('lib/images/bolt.png',
                                    color: Colors.white, height: 35)),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '5kwh',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // plug
                        Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 25,
                              backgroundColor: Colors.grey[850],
                              child: Image.asset('lib/images/plug.png',
                                  color: Colors.white, height: 35),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '120kwh',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'This month',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 15.0),
          // add new device button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 60,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[850]
                ),
                child: const Center(
                  child: Text(
                      'Add new device',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
