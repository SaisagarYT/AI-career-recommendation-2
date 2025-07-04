import 'package:career_path_recommendation/assets/images.dart';
import 'package:career_path_recommendation/customWidgets/CustomInput.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff0E2515),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image(
                      image: AssetImage(AppImages.stars),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage(AppImages.logo1), width: 150),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Already have account? ",
                              style: TextStyle(color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  '/sign',
                                );
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.7,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomInput(
                        label: "Email/Username",
                        placeholder: "Type you email or username",
                        icon: Icon(Icons.email),
                      ),
                      SizedBox(height: 15),
                      CustomInput(
                        label: "Password",
                        placeholder: "Type your password",
                        icon: Icon(Icons.email),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(value: isChecked, onChanged: null),
                              Text("Remember me"),
                            ],
                          ),
                          Text("Forget Password?"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 20),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xff2c7743),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(width: 100, height: 2, color: Colors.grey),
                          Text(
                            "Or login with",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Container(width: 100, height: 2, color: Colors.grey),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Image(image: AssetImage(AppImages.facebook)),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 40,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Google",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 40,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
