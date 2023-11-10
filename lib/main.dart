import 'package:flutter/material.dart';
import 'package:mini_note_project/view/my_home_page.dart';
import 'package:mini_note_project/view_modal/note_view_modal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final NoteViewModal viewModal = NoteViewModal();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.redAccent[700],
            centerTitle: true,
            elevation: 0,
            titleTextStyle: Theme.of(context).textTheme.headlineSmall),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: MyHomePage(
        viewModal: viewModal,
      ),
    );
  }
}
