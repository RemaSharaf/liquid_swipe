import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_wallet_app/data.dart';

class LiquidSwipeWidget extends StatelessWidget {
  const LiquidSwipeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LiquidSwipe(
          pages: [
            Online(Colors.white),
            Online(Colors.black),
          ],
          enableLoop: true,
          fullTransitionValue: 300,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
          // enableSideReveal: true,
          slideIconWidget: Icon(Icons.arrow_back_ios),
          
        ),
      ),
    );
  }
}

Widget Online(Color color) {
  return Container(
    padding: const EdgeInsets.all(20),
    color: color,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "GoldCoin",
              style: AppColors.greyStyle,
            ),
            Text(
              "Skip",
              style: AppColors.greyStyle,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 45),
          child: Image.asset("images/firstImage.png"),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Online",
                style: AppColors.greyStyleBold,
              ),
              Text(
                "Gambling",
                style: AppColors.boldStyle,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 45, horizontal: 10),
          child: const Text(
            "Temporibus autem aut\n"
            "officiis debitis aut rerum\n"
            "necessitatibus",
            style: AppColors.descriptionGreyStyle,
          ),
        )
      ],
    ),
  );
}
