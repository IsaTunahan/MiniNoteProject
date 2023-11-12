import 'package:flutter/material.dart';
import 'package:mini_note_project/utils/theme.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.buttonText, required this.buttonOnPressed});

  final String buttonText;
  final Function() buttonOnPressed;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.buttonOnPressed,
      style: ElevatedButton.styleFrom(
        elevation: 2,
        backgroundColor: AppTheme.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        widget.buttonText,
        style: const TextStyle(color: AppTheme.secondaryColor),
      ),
    );
  }
}
