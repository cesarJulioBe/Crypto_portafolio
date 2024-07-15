import 'package:cripto_portafolio/core/app/colors.dart';
import 'package:cripto_portafolio/core/app/images.dart';
import 'package:flutter/material.dart';

class TokenWidget extends StatelessWidget {
  const TokenWidget({
    super.key,
    required this.abbreviation,
    required this.name,
    required this.price,
    required this.percentage,
  });

  final String abbreviation;
  final String name;
  final String price;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                child: Image.asset(
                  AppImages.flor,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    abbreviation.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    percentage,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
