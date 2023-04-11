import 'package:cookboox_1/screens/home_screen.dart';
import 'package:cookboox_1/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:cookboox_1/screens/screens.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'CookBook',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      theme: AppTheme.lightTheme,
      routes: {
        'login' : (context) => const LoginScreen(),
        'signup' : (context) => const SignupScreen(),
        'home' : (context) => const HomeScreen(),
      },
    );
  }
}