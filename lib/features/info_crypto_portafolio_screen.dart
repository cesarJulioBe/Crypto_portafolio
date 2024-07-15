import 'package:cripto_portafolio/core/app/colors.dart';
import 'package:cripto_portafolio/core/app/images.dart';
import 'package:cripto_portafolio/features/welcome_screen.dart';
import 'package:flutter/material.dart';

class InfoCryptoPortafolioScreen extends StatelessWidget {
  const InfoCryptoPortafolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Crypt',
                  style: TextStyle(
                    fontSize: 90,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'X',
                  style: TextStyle(
                    fontSize: 90,
                    color: AppColors.purple.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              AppImages.florB,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Jump start your crypto portafolio',
              style: TextStyle(
                fontSize: 30,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Take your investment portafolio to next level',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.white,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    AppColors.purple.shade700,
                  ),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.all(20),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
