import 'package:flutter/material.dart';
import 'package:jump_ais/constants/colors.dart';

class SuggestionMessagesWidget extends StatelessWidget {
  const SuggestionMessagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: 0,
      right: 0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            const SugestionWordWidget(),
            const SizedBox(width: 10),
            const SugestionWordWidget(),
            const SizedBox(width: 10),
            const SugestionWordWidget(),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}

class SugestionWordWidget extends StatelessWidget {
  const SugestionWordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(100),
      ),
      child: const Center(
        child: Text(
          "วิธีตั้งค่าโปรไฟล์",
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
