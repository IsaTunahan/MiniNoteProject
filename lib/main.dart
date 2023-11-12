import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mini_note_project/utils/theme.dart';
import 'package:mini_note_project/view/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          color: Colors.redAccent[700],
          centerTitle: true,
          elevation: 0,
          titleTextStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppTheme.secondaryColor),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
