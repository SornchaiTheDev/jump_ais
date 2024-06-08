import 'package:flutter/material.dart';
import 'package:jump_ais/constants/colors.dart';
import 'package:line_icons/line_icons.dart';

class ChatTopBarWidget extends StatelessWidget {
  const ChatTopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.only(top: 60, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 1),
              blurRadius: 20,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(LineIcons.arrowLeft),
                      style: ButtonStyle(
                        iconSize: WidgetStateProperty.all(32.0),
                      ),
                    ),
                    const Text(
                      "หลานสอน",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(primaryColor),
                  foregroundColor: WidgetStateProperty.all(
                    const Color(0xFF1E1E1E),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(LineIcons.paperHand),
                    SizedBox(width: 8),
                    Text(
                      "เรียกหลาน",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
