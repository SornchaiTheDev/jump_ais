import 'package:flutter/material.dart';
import 'package:jump_ais/constants/colors.dart';

class LarnShortcut extends StatelessWidget {
  const LarnShortcut({
    super.key,
    required this.badgeCount,
  });

  final int badgeCount;

  @override
  Widget build(BuildContext context) {
    bool isShowBadge = badgeCount > 0;
    bool isLargeCount = badgeCount > 99;

    String badgeText = isLargeCount ? "99+" : badgeCount.toString();

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          right: -10,
          top: -10,
          child: Visibility(
            visible: isShowBadge,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  badgeText,
                  style: TextStyle(
                    fontSize: isLargeCount ? 18 : 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: primaryColor.withOpacity(0.3),
          onTap: () {
            Navigator.pushNamed(context, "/chat");
          },
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: primaryColor,
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  color: primaryColor,
                  blurRadius: 0,
                  offset: Offset(0, 8),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/larn1.png",
                  width: 100,
                ),
                const SizedBox(height: 10),
                const Text(
                  "หลานสอน",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
