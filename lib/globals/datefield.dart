import 'package:flutter/material.dart';

class DateField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorMessage;
  final Function(BuildContext context) onTap;

  const DateField({
    Key? key,
    required this.controller,
    this.errorMessage,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Error message
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4), // Adjust padding below error message
            child: Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 12), // Error text styling
            ),
          ),
        GestureDetector(
          onTap: () => onTap(context),
          child: Container(
            width: size.width * 0.14,
            height: size.height * 0.040,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade700, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                controller.text.isEmpty ? 'dd/mm/yyyy' : controller.text, // Display placeholder or entered date
                style: TextStyle(
                  color: controller.text.isEmpty ? Colors.grey.shade500 : Colors.black,
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
