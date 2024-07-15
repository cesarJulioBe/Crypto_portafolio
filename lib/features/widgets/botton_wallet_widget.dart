import 'package:cripto_portafolio/core/app/colors.dart';
import 'package:flutter/material.dart';

class BottonWalletWidget extends StatelessWidget {
  const BottonWalletWidget({
    super.key,
    required this.image,
    required this.title,
    required this.color,
  });

  final String image;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(
            30,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                60,
              ),
              color: color),
          child: Image.asset(
            image,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
