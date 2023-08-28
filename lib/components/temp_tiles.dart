import 'package:flutter/material.dart';

class TempTiles extends StatelessWidget {
  final String tempImagePath;
  final bool isSelected;
  final String tempType;
  const TempTiles({
    super.key,
    required this.tempImagePath,
    required this.isSelected,
    required this.tempType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: isSelected ? Colors.grey[850] : Colors.grey[300]),
          child: Image.asset(
            tempImagePath,
            height: 35,
            color: isSelected ? Colors.white : Colors.grey[850],
          ),
        ),

        const SizedBox(height: 5),
        Text(
            tempType,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
