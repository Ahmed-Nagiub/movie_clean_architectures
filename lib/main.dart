import 'package:flutter/material.dart';
import 'package:movie_clean_code/core/services/services_locator.dart';
import 'package:movie_clean_code/core/utils/app_string.dart';
import 'package:movie_clean_code/movies/presentation/screens/movies_screen.dart';


void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff121312),
      ),
      home: const MoviesScreen(),
    );
  }
}
