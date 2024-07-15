import 'package:cripto_portafolio/core/app/colors.dart';
import 'package:cripto_portafolio/core/app/icons.dart';
import 'package:cripto_portafolio/core/app/images.dart';
import 'package:cripto_portafolio/features/widgets/botton_wallet_widget.dart';
import 'package:cripto_portafolio/features/widgets/token_widget.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: Container(
          width: 0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.blue,
              width: 4.0,
            ),
          ),
          child: const CircleAvatar(
            radius: 0,
            backgroundImage: ExactAssetImage(AppImages.flor),
          ),
        ),
        title: Text(
          'Account_1',
          style: TextStyle(
            fontSize: 18,
            color: AppColors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: AppColors.white,
              size: 40,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(
            .20,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(
              40,
            ),
            topRight: Radius.circular(
              40,
            ),
          ),
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Icon(
                      Icons.wallet,
                      color: AppColors.white,
                      size: 40,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Icon(
                      Icons.wallet,
                      color: AppColors.white,
                      size: 40,
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Icon(
                      Icons.wallet,
                      color: AppColors.white,
                      size: 40,
                    ),
                    Text(
                      'Market',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Icon(
                      Icons.wallet,
                      color: AppColors.white,
                      size: 40,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Current Wallet Balance',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '\$ 5,323.00',
              style: TextStyle(
                fontSize: 40,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(
                1,
              ),
              width: 250,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(
                  .20,
                ),
                borderRadius: BorderRadius.circular(
                  40,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BTC : 0,00335',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_up_sharp,
                    color: AppColors.green,
                    size: 30,
                  ),
                  Text(
                    '+6.54%',
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottonWalletWidget(
                  image: AppIcons.google,
                  title: 'Send',
                  color: AppColors.white.withOpacity(
                    .20,
                  ),
                ),
                BottonWalletWidget(
                    image: AppIcons.google,
                    title: 'Buy',
                    color: AppColors.purple.shade900),
                BottonWalletWidget(
                  image: AppIcons.google,
                  title: 'Receive',
                  color: AppColors.white.withOpacity(
                    .20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TokenWidget(
              abbreviation: 'btc',
              name: 'Bitcoin',
              price: '\$36,590.00',
              percentage: '+6.21%',
            ),
            TokenWidget(
              abbreviation: 'btc',
              name: 'Bitcoin',
              price: '\$36,590.00',
              percentage: '+6.21%',
            ),
            TokenWidget(
              abbreviation: 'btc',
              name: 'Bitcoin',
              price: '\$36,590.00',
              percentage: '+6.21%',
            ),
          ],
        ),
      ),
    );
  }
}
