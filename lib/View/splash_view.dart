import 'dart:async';

import 'package:fitzone/View/dashboard_view.dart';
import 'package:fitzone/View/terms_of_use_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (seen) {
      Timer(Duration(seconds: 3), () {
        Get.off(() => DashboardView());
      });
    } else {
      await prefs.setBool('seen', true);
      Timer(Duration(seconds: 3), () {
        Get.off(() => TermsOfUseView());
      });
    }
  }

  @override
  void initState() {
    checkFirstSeen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/Splash/Frame 1000006134 (1) 1@1x.png',
                ),
              ),
              Text(
                'FitZone: Your Gym Guide',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Center(
            child: Image.asset(
              'assets/Splash/girl-running-on-treadmill 1@1x.png',
            ),
          ),
        ],
      ),
    );
  }
}
