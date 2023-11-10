import 'package:flutter/material.dart';
import 'package:mini_note_project/modal/note_modal.dart';

class NoteViewModal extends ChangeNotifier {
  List<NoteModel> notes = [];

// Add Note
  void addNote(String newNote) {
    notes.add(NoteModel(id: notes.length + 1, content: newNote));
    notifyListeners();
  }

// Update Note
  void updateNote(int index, String UpdatedNote) {
    notes[index].content = UpdatedNote;
    notifyListeners();
  }

// Delete Note

  void deleteNote(int index) {
    notes.removeAt(index);
    notifyListeners();
  }
}
