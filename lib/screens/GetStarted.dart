import 'package:career_path_recommendation/assets/images.dart';
import 'package:career_path_recommendation/customWidgets/Nextbutton.dart';
import 'package:career_path_recommendation/customWidgets/PreButton.dart';
import 'package:flutter/material.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c7743),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.reading,
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: const Color.fromARGB(136, 0, 0, 0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Explore and learn new skills",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Take a step forward to enter new world.",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 223, 223, 223),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            pageController.animateToPage(
                              1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeOut,
                            );
                          },
                          child: Prebutton(
                            bgcolor: Color(0xff2c7743),
                            text: "Start Now",
                          ),
                        ),
                        SizedBox(height: 12),
                        Nextbutton(
                          borderColor: Colors.white,
                          text: "Get started with Premium Plan",
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Image.asset(
                AppImages.stars,
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Center(child: Image(image: AssetImage(AppImages.logo))),
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: const Color.fromARGB(136, 0, 0, 0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Explore and learn new skills",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          "Take a step forward to enter new world.",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 223, 223, 223),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(
                          2,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Column(
                          children: [
                            Prebutton(
                              bgcolor: Color(0xff2c7743),
                              text: "Start Now",
                            ),
                            SizedBox(height: 12),
                            Nextbutton(
                              borderColor: Colors.white,
                              text: "Get started with Premium Plan",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Image.asset(
                AppImages.watching,
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: const Color.fromARGB(136, 0, 0, 0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Explore and learn new skills",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          "Take a step forward to enter new world.",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 223, 223, 223),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/sign');
                            },
                            child: Prebutton(
                              bgcolor: Color(0xff2c7743),
                              text: "Start Now",
                            ),
                          ),
                          SizedBox(height: 12),
                          Nextbutton(
                            borderColor: Colors.white,
                            text: "Get started with Premium Plan",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
