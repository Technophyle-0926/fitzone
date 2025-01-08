import 'package:fitzone/View/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsOfUseView extends StatefulWidget {
  const TermsOfUseView({super.key});

  @override
  State<TermsOfUseView> createState() => _TermsOfUseViewState();
}

class _TermsOfUseViewState extends State<TermsOfUseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child:
                      Image.asset("assets/Terms of use/Rectangle 1188@4x.png"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Terms of Use",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Application is informing you about the app, that gives you many services and important information for safer and efficient use.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "User-Generated Content Policy(UGC) By pressing the Accept button",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        spacing: 15,
                        children: [
                          Image.asset(
                            "assets/Terms of use/Frame 3846@4x.png",
                            height: 50,
                          ),
                          Text(
                              "I declare I have read and accepted the following \ncondition of use.")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        spacing: 15,
                        children: [
                          Image.asset(
                            "assets/Terms of use/Frame 3847@4x.png",
                            height: 50,
                          ),
                          Text(
                              "If we find the app is being used outside its terms \nof use, we may restrict access to it.")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        spacing: 15,
                        children: [
                          Image.asset(
                            "assets/Terms of use/Frame 3848@4x.png",
                            height: 50,
                          ),
                          Text(
                              "Any type of modification to the app or its \ncomponents is not allowed.")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        spacing: 15,
                        children: [
                          Image.asset(
                            "assets/Terms of use/Frame 3849@4x.png",
                            height: 50,
                          ),
                          Text(
                            "Privacy Policy may be updated from time to time for \nany reason. We will notify you of any changes to \nour Privacy Policy by posting the new Privacy Policy \nhere.",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        spacing: 15,
                        children: [
                          Image.asset(
                            "assets/Terms of use/Frame 3845@4x.png",
                            height: 50,
                          ),
                          Text(
                              "We do not share any kind of your Personal \nData with third parties.")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "You can find out more information by clicking on the"),
                      Row(
                        children: [
                          Text("Following Link: "),
                          Text(
                            'Terms and condition of use',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Following Link: "),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 50,
                          width: 170,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.off(() => OnboardingView());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              "Accept",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
