import 'package:career_path_recommendation/assets/images.dart';
import 'package:career_path_recommendation/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double w = 100;
  double h = 100;
  @override
  void initState(){
    context.read<AppBloc>().add(SplashScreenEvent());
    Future.delayed(Duration(milliseconds: 300));
    w = 400;
    h = 400;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E2515),
      body: BlocListener<AppBloc, AppState>(
        listener: (context, state) {
          if (state is NavigationFromSplashToOnboardState) {
            Navigator.pushReplacementNamed(context, '/onboard');
          }
        },
        child: Center(
          child: AnimatedContainer(
            width: w,
            height: h,
            duration: Duration(milliseconds: 500),
            child: Image.asset(AppImages.logo),
          ),
        ),
      ),
    );
  }
}
