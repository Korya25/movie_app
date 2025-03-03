import 'package:flutter/material.dart';
import 'package:movie_app/core/resources/navigation/app_router.dart';
import 'package:movie_app/core/resources/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      routerConfig: AppRouter().router,
    );
  }
}
