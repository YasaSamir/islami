import 'package:flutter/material.dart';
import 'package:islamii/core/constants/app_assets.dart';
import 'package:islamii/core/constants/app_colors.dart';
import 'package:islamii/core/theme/custom_text_style.dart';
import 'package:islamii/features/home/presentation/widgets/custom_text_field.dart';
import 'package:islamii/features/home/presentation/widgets/recent_sura_list_view.dart';
import 'package:islamii/features/home/presentation/widgets/sura_list_tile.dart';
import '../../../config/widgets/custom_logo_islami.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        children: [
          Image.asset(
            AppAssets.quranBgImg,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(.2),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomLogoIslami(),
                CustomTextField(),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Most Recently',
                    style: CustomTextStyle.paragraphStyle.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                RecentSuraListView(),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Suras List',
                    style: CustomTextStyle.paragraphStyle.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 114,
                    itemBuilder: (context, index) {
                      return SuraListTile(
                        suraNumber: '${index + 1}',
                        suraEnName: 'Al-Fatiha',
                        suraArName: 'الفاتحه',
                        versesCount: '7',
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
