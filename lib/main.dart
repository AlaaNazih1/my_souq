import 'package:flutter/material.dart';
import 'package:my_souq/components/declartions.dart';

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
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,),
        ),
        scaffoldBackgroundColor: Declartions.backgroundColor,
      ),
     home:Scaffold(
      appBar: AppBar(
        title: Text("My Souq"),
      ),
      body: Center(child: Text("My Souq"),),) ,
    );
  }
}

