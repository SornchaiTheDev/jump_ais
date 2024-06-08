import 'package:flutter/material.dart';
import 'package:jump_ais/constants/colors.dart';
import 'package:line_icons/line_icons.dart';

class SpeechWidget extends StatelessWidget {
  const SpeechWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(LineIcons.microphone),
          iconSize: 48,
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(primaryColor),
            padding: WidgetStatePropertyAll(
              EdgeInsets.all(24.0),
            ),
          ),
        ),
      ],
    );
  }
}
