import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bookly',
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
      ),
      home: const SplashView(),
    );
  }
}
