import 'package:flutter/material.dart';
import 'package:mini_note_project/widgets/custom_button.dart';

class NoteDialog {
  static void showAlertDialog(BuildContext context, String title, String initialValue, String buttonText,
      void Function(String) onDialogSubmit) {
    String updateValue = initialValue;

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: TextFormField(
              initialValue: initialValue,
              onChanged: (value) {
                updateValue = value;
              },
            ),
            actions: [
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: buttonText,
                      buttonOnPressed: () {
                        onDialogSubmit(updateValue);
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }
}
