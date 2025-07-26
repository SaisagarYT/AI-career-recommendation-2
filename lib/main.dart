import 'package:career_path_recommendation/bloc/app_bloc.dart';
import 'package:career_path_recommendation/firebase_options.dart';
import 'package:career_path_recommendation/screens/GetStarted.dart';
import 'package:career_path_recommendation/screens/Homescreen.dart';
import 'package:career_path_recommendation/screens/Onboard.dart';
import 'package:career_path_recommendation/screens/SplashScreen.dart';
import 'package:career_path_recommendation/screens/authentication/Register.dart';
import 'package:career_path_recommendation/screens/authentication/Signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(BlocProvider(create: (context) => AppBloc(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => Splashscreen(),
        '/onboard': (context) => Onboard(),
        '/started': (context) => Getstarted(),
        '/register': (context) => Register(),
        '/sign': (context) => Signin(),
        '/homepage': (context) => Homescreen(),
      },
    );
  }
}
