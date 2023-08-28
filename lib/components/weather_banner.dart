import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherBanner extends StatelessWidget {
  const WeatherBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[850]
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text('18° C,',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),),
              Image.asset(
                'lib/images/cloudy-night.png',
                height: 50,
              )
            ],
          ),
           Text(
            'Cloudy',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

           Text('Tue, August 23',style: GoogleFonts.openSans(color: Colors.white,),),

          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Indoor temp',style: TextStyle(color: Colors.white,),),
              Text('Humidity',style: TextStyle(color: Colors.white,),),
              Text('Air Quality',style: TextStyle(color: Colors.white,),),
            ],
          ),

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('23° C   ',style: GoogleFonts.openSans(color: Colors.white,),),
              Text('40%',style: GoogleFonts.openSans(color: Colors.white,),),
              Text('Good        ',style: GoogleFonts.openSans(color: Colors.white,),),
            ],
          ),
        ],
      ),
    );
  }
}
