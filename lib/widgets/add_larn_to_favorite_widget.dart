import 'package:flutter/material.dart';
import 'package:jump_ais/constants/colors.dart';

class AddLarnToFavoriteWidget extends StatelessWidget {
  const AddLarnToFavoriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: primaryColor.withOpacity(0.3),
      onTap: () {},
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_outline,
              size: 48,
              color: primaryColor,
            ),
            SizedBox(height: 10),
            Text(
              "เพิ่มเติม",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
