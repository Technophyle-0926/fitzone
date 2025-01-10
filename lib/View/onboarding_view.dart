import 'package:fitzone/View/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: _introKey,
      showDoneButton: false,
      showNextButton: false,
      showBackButton: false,
      showBottomPart: true,
      showSkipButton: false,
      scrollControllers: [],
      dotsDecorator: DotsDecorator(
        size: const Size(20.0, 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        activeSize: const Size(40.0, 10.0),
        activeColor: Colors.white,
        color: Colors.white.withAlpha((0.5 * 255).toInt()),
        spacing: const EdgeInsets.symmetric(horizontal: 2.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            fullScreen: true,
            titlePadding: EdgeInsets.only(bottom: 10),
            bodyPadding: EdgeInsets.all(0),
            bodyAlignment: Alignment.bottomLeft,
            contentMargin: EdgeInsets.all(5),
          ),
          titleWidget: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Fun Exercises',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          bodyWidget: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover fun workouts, track your \nprogress, and stay motivated!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 125,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _introKey.currentState?.next();
                        });
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          image: Stack(
            children: [
              Image.asset(
                "assets/Onboarding 1/Mask group@2x.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withAlpha((0.3 * 255).toInt()),
              ),
            ],
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            fullScreen: true,
            titlePadding: EdgeInsets.only(bottom: 5),
            bodyPadding: EdgeInsets.all(0),
            bodyAlignment: Alignment.bottomLeft,
            contentMargin: EdgeInsets.all(10),
          ),
          titleWidget: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Stay Healthy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          bodyWidget: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get nutritional value of food, and \nhit your calorie goals effortlessly!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 125,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _introKey.currentState?.next();
                        });
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          image: Stack(
            children: [
              Image.asset(
                "assets/Onboarding 2/Mask group@2x.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withAlpha((0.3 * 255).toInt()),
              ),
            ],
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            fullScreen: true,
            titlePadding: EdgeInsets.only(bottom: 10),
            bodyPadding: EdgeInsets.all(0),
            bodyAlignment: Alignment.bottomLeft,
            contentMargin: EdgeInsets.all(10),
          ),
          titleWidget: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Nutritional Insights',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          bodyWidget: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get nutritional value of food, and \nhit your calorie goals effortlessly!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => DashboardView());
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          image: Stack(
            children: [
              Image.asset(
                "assets/Onboarding 3/Rectangle 1192@2x.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withAlpha((0.3 * 255).toInt()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
