import 'package:flutter/material.dart';
import 'package:mini_note_project/utils/custom_show_dialog.dart';
import 'package:mini_note_project/utils/theme.dart';
import 'package:mini_note_project/widgets/custom_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> notes = [];

  // Add Note
  void _addNote(BuildContext context) {
    String newNote = '';
    String title = 'Notunuzu Girin';
    String buttonText = 'Ekle';
    NoteDialog.showAlertDialog(
      context,
      title,
      newNote,
      buttonText,
      (newNote) {
        setState(() {
          notes.add(newNote);
        });
      },
    );
  }

  // Update Note
  void _updateNote(BuildContext context, int index) {
    String currentNote = notes[index];
    String title = 'Notunuzu Güncelleyin';
    String buttonText = 'Güncelle';

    NoteDialog.showAlertDialog(context, title, currentNote, buttonText, (updatedNote) {
      setState(() {
        notes[index] = updatedNote;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const String title = 'Mini Note App';
    String buttonText = 'Not Ekle';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: AppTheme.defaultPadding,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonOnPressed: () {
                        _addNote(context);
                      },
                      buttonText: buttonText,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 9, child: noteList())
          ],
        ),
      ),
    );
  }

  ListView noteList() {
    return ListView.builder(
        itemCount: notes.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 5, color: AppTheme.accentColor),
                    borderRadius: BorderRadius.circular(10)),
                tileColor: Colors.black,
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Text(
                  '${index + 1}.',
                  style: const TextStyle(fontSize: 16),
                ),
                title: Text(notes[index]),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _updateNote(context, index);
                        });
                      },
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          notes.removeAt(index);
                        });
                      },
                      icon: const Icon(Icons.delete_outline),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              )
            ],
          );
        });
  }
}
