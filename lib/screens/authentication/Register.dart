import 'package:career_path_recommendation/assets/images.dart';
import 'package:career_path_recommendation/customWidgets/CustomInput.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String selectedCountryCode = '+1';
  String selectedCountryFlag = '🇺🇸';
  final List<Map<String, String>> countryCodes = [
    {'code': '+1', 'flag': '🇺🇸'},
    {'code': '+91', 'flag': '🇮🇳'},
    {'code': '+44', 'flag': '🇬🇧'},
    {'code': '+61', 'flag': '🇦🇺'},
  ];

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.04;
    final buttonFontSize = size.width * 0.045;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff0E2515),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.35,
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
                        SizedBox(height: 10),
                        Text(
                          "Register",
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
            Expanded(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                  child: Form(
                    child: Container(
                      width: double.maxFinite,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CustomInput(
                                    controller: firstNameController,
                                    label: "First Name",
                                    placeholder: "Type your first name",
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomInput(
                                    controller: lastNameController,
                                    label: "Last Name",
                                    placeholder: "Type your last name",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            CustomInput(
                              controller: emailController,
                              label: "Email",
                              placeholder: "Type your Email",
                            ),
                            SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: [],
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: selectedCountryCode,
                                        items:
                                            countryCodes.map((country) {
                                              return DropdownMenuItem<String>(
                                                value: country['code'],
                                                child: Row(
                                                  children: [
                                                    Text(country['flag'] ?? ''),
                                                    SizedBox(width: 6),
                                                    Text(country['code'] ?? ''),
                                                  ],
                                                ),
                                              );
                                            }).toList(),
                                        onChanged: (val) {
                                          setState(() {
                                            selectedCountryCode = val!;
                                            selectedCountryFlag =
                                                countryCodes.firstWhere(
                                                  (c) => c['code'] == val,
                                                )['flag']!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: 40,
                                    color: Colors.grey.shade300,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value.toString().length < 10) {
                                          return "Enter valid number!";
                                        }
                                        return null;
                                      },
                                      controller: phoneController,
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 16,
                                        ),
                                        hintText: 'Phone Number',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        filled: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            CustomInput(
                              controller: passwordController,
                              label: "Password",
                              placeholder: "Type your password",
                            ),
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
                              onTap: () async {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 25,
                                  bottom: 20,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2c7743),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100,
                                  height: 2,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "Or login with",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Container(
                                  width: 100,
                                  height: 2,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                          vertical: padding * 0.9,
                                        ),
                                        side: BorderSide(width: 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
