import 'package:flutter/material.dart';
import 'package:islamii/core/constants/app_assets.dart'; // Ensure this has suraNumberShape
import 'package:islamii/core/constants/app_colors.dart';
import 'package:islamii/core/theme/custom_text_style.dart';

class SuraListTile extends StatelessWidget {
  // Add these variables to make the widget reusable
  final String suraNumber;
  final String suraEnName;
  final String suraArName;
  final String versesCount;

  const SuraListTile({
    super.key,
    required this.suraNumber,
    required this.suraEnName,
    required this.suraArName,
    required this.versesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,

          // 1. The Star Shape with Number
          leading: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AppAssets.starImg, // Change from hadithBgImg to your star asset
                width: 50,
                height: 50,
              ),
              Text(
                suraNumber,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),

          // 2. English Name and Verses
          title: Text(
            suraEnName,
            style: CustomTextStyle.headingStyle.copyWith(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            '$versesCount Verses',
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),

          // 3. Arabic Name
          trailing: Text(
            suraArName,
            style: CustomTextStyle.headingStyle.copyWith(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),

        // Horizontal line between items
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}