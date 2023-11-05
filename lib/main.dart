import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/utils/color_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
        useMaterial3: true,
      ),
    );
  }
}
