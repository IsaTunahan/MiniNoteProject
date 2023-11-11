import 'package:flutter/material.dart';
import 'package:mini_note_project/utils/custom_show_dialog.dart';
import 'package:mini_note_project/view_modal/note_view_modal.dart';
import 'package:mini_note_project/widgets/custom_button.dart';

class MyHomePage extends StatefulWidget {
  final NoteViewModal viewModal;

  const MyHomePage({super.key, required this.viewModal});

  @override
  State<MyHomePage> createState() => _MyHomePageState();

  
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const String title = 'Mini Note App';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: CustomButton(
          buttonOnPressed: () {
            NoteDialog.showAlertDialog(context, 'Deneme', '', 'Gonder', (p0) {});
          },
          buttonText: 'Deneme',
        ),
      ),
    );
  }
}
