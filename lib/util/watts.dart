import 'package:flutter/material.dart';

class MyWatts extends StatelessWidget {
  final String WattCount;
  final bool isSelected;
  MyWatts({
    super.key,
    required this.WattCount,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? Colors.grey[850] : Colors.white),
        child: Center(
            child: Text(
          WattCount,
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey[850],
              fontWeight: FontWeight.bold,
              fontSize: 15),
        )),
      ),
    );
  }
}
