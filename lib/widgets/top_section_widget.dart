import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[200],
                backgroundImage: const AssetImage(
                  "assets/images/profile-placeholder.png",
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "สวัสดีตอนเช้าค่ะ",
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                    ),
                  ),
                  Text(
                    "คุณพี่สมศรีลาบูบู้",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.headlineSmall!.fontSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(LineIcons.cog),
          style: const ButtonStyle(
            iconSize: WidgetStatePropertyAll(32.0),
          ),
        ),
      ],
    );
  }
}
