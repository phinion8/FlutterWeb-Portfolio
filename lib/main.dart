import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/home.dart';
import 'package:portfolio_website/theme/app_theme.dart';
import 'package:portfolio_website/utils/custom_scroll_behaviour.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Priyanshu's Portfolio",
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      home: const HomePage(),
    );
  }
}




