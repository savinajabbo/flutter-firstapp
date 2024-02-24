import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/constants/image_strings.dart';
import 'package:myapp/src/constants/sizes.dart';
import 'package:myapp/src/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
              pages: [
                Container(
                  padding: const EdgeInsets.all(30),
                  color: tOnBoardingPage1Color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage(tOnBoardingImage1)),
                      Column(
                        children: [
                          Text(tOnBoardingTitle1, style: Theme.of(context).textTheme.headlineMedium,),
                          Text(tOnBoardingSubTitle1, textAlign: TextAlign.center,),
                        ],
                      ),
                      Text(tOnBoardingCounter1, style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  ),
                ),
                Container(color: tOnBoardingPage2Color),
                Container(color: tOnBoardingPage3Color),
              ],
          )
        ],
      ),
    );
  }
}