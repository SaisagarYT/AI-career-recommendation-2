import 'package:career_path_recommendation/assets/images.dart';
import 'package:career_path_recommendation/customWidgets/CustomInput.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool isChecked = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.04;
    final buttonFontSize = size.width * 0.045;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff0E2515),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.4,
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
                              "Don't have an account? ",
                              style: TextStyle(color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  '/register',
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Sign In To Your Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.10,
                          ),
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
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomInput(
                        controller: emailController,
                        label: "Email/Username",
                        placeholder: "Type your email or username",
                      ),
                      SizedBox(height: 15),
                      CustomInput(
                        controller: passwordController,
                        label: "Password",
                        placeholder: "Type your password",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (val) {
                                  setState(() {
                                    isChecked = val ?? false;
                                  });
                                },
                              ),
                              Text("Remember me"),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              // TODO: Implement forget password navigation
                            },
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                          ),
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
                            Expanded(
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: padding * 0.9,
                                  ),
                                  side: BorderSide(width: 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppImages.google,
                                      width: padding * 2,
                                      height: padding * 2,
                                    ),
                                    SizedBox(width: padding * 0.7),
                                    Text(
                                      "Google",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: buttonFontSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: padding),
                            Expanded(
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: padding * 0.9,
                                  ),
                                  side: BorderSide(width: 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppImages.facebook,
                                      width: padding * 2,
                                      height: padding * 2,
                                    ),
                                    SizedBox(width: padding * 0.7),
                                    Text(
                                      "Facebook",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: buttonFontSize,
                                      ),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
