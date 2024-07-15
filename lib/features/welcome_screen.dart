import 'package:cripto_portafolio/core/app/colors.dart';
import 'package:cripto_portafolio/core/app/icons.dart';
import 'package:cripto_portafolio/features/wallet_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'Welcome back to Mabank Wallet',
              style: TextStyle(
                fontSize: 30,
                color: AppColors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Sign up with',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.white,
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
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          AppIcons.google,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.blue.shade900,
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
                    child: Row(
                      children: [
                        Image.asset(
                          AppIcons.google,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.grey.shade200,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    prefixIcon: Image.asset(
                      AppIcons.google,
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.grey.shade200,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Image.asset(
                      AppIcons.google,
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 200,
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
                      builder: (context) => WalletScreen(),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don´t have an account yet?',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
