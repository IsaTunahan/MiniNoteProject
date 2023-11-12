import 'package:flutter/material.dart';
import 'package:mini_note_project/utils/theme.dart';
import 'package:mini_note_project/widgets/custom_button.dart';

class NoteDialog {
  static void showAlertDialog(BuildContext context, String title, String initialValue, String buttonText,
      void Function(String) onDialogSubmit) {
    String value = initialValue;

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 5,color: AppTheme.primaryColor),
              borderRadius: BorderRadius.circular(25),
            ),
            title: Center(child: Text(title)),
            content: TextFormField(
              initialValue: initialValue,
              onChanged: (newValue) {
                value = newValue;
              },
            ),
            actions: [
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: buttonText,
                      buttonOnPressed: () {
                        onDialogSubmit(value);
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
