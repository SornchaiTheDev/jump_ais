import 'package:flutter/material.dart';
import 'package:jump_ais/constants/colors.dart';
import 'package:jump_ais/widgets/add_larn_to_favorite_widget.dart';
import 'package:jump_ais/widgets/larn_shortcut_widget.dart';
import 'package:jump_ais/widgets/speech_widget.dart';
import 'package:jump_ais/widgets/top_section_widget.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopSection(),
              const SizedBox(height: 80),
              Text(
                "หลานคนโปรด",
                style: TextStyle(
                  fontSize:
                      Theme.of(context).textTheme.headlineMedium!.fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Flexible(
                flex: 1,
                child: GridView.count(
                  childAspectRatio: 9 / 10,
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                  shrinkWrap: true,
                  children: const [
                    LarnShortcut(
                      badgeCount: 400,
                    ),
                    LarnShortcut(
                      badgeCount: 0,
                    ),
                    LarnShortcut(
                      badgeCount: 0,
                    ),
                    AddLarnToFavoriteWidget(),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const SpeechWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
