import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavWidget(
                onTap: (){},icon: Ionicons.home,
              ),
              BottomNavWidget(
                onTap: (){},icon: Ionicons.stats_chart,
              ),
              BottomNavWidget(
                onTap: (){},icon: Ionicons.settings,
              ),
              BottomNavWidget(
                onTap: (){},icon: Ionicons.person,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    this.onTap,
    this.icon,
  });
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 36,
      child: Icon(icon,
        color: Colors.white,
      ),
    );
  }
}
