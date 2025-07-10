import 'package:career_path_recommendation/customWidgets/Nextbutton.dart';
import 'package:career_path_recommendation/customWidgets/PreButton.dart';
import 'package:flutter/material.dart';
import '../../assets/images.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  ScrollController scrollController = ScrollController();
  PageController pageController = PageController();
  int current_page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.78,
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  current_page = value;
                });
              },
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Image(image: AssetImage(AppImages.Phone1)),
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "The best unlimited onine learning platform",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Learn new skill categories for you. Sideskills provides unlimited online learning materials.",
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: Image(image: AssetImage(AppImages.Phone2)),
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "The best unlimited onine learning platform",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Learn new skill categories for you. Sideskills provides unlimited online learning materials.",
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: Image(image: AssetImage(AppImages.Phone3)),
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "The best unlimited onine learning platform",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Learn new skill categories for you. Sideskills provides unlimited online learning materials.",
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: Image(image: AssetImage(AppImages.Phone4)),
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "The best unlimited onine learning platform",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Learn new skill categories for you. Sideskills provides unlimited online learning materials.",
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              height: 5,
              width: 120, // Enough width for all 4 indicators + margins
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder:
                    (context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      width: 25,
                      height: 5,
                      color: index == current_page ? Colors.green : Colors.grey,
                    ),
              ),
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/started');
            },
            child: Prebutton(bgcolor: Color(0xff2c7743), text: "Get Started"),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              if (current_page == 0) {
                pageController.animateToPage(
                  1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else if (current_page == 1) {
                pageController.animateToPage(
                  2,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else if (current_page == 2) {
                pageController.animateToPage(
                  3,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else if (current_page == 3) {
                Navigator.pushReplacementNamed(context, '/started');
              }
            },
            child: Nextbutton(borderColor: Color(0xff2c7743), text: "Next"),
          ),
        ],
      ),
    );
  }
}
