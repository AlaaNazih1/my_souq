import 'package:flutter/material.dart';
import 'package:my_souq/app/screens/auth_screen.dart';
import 'package:my_souq/components/declartions.dart';
import 'package:my_souq/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       colorScheme: const ColorScheme.light(
        primary: Declartions.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Declartions.secondaryColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,),
        ),
        scaffoldBackgroundColor: Declartions.backgroundColor,
      ),
      onGenerateRoute: (settings)=> generateRoute(settings),
     home: const AuthScreen(),
    );
  }
}

