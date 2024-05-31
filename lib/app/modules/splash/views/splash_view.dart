import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygallerybook/app/modules/splash/controllers/splash_controller.dart';
import 'package:mygallerybook/core/app_assets.dart';
import 'package:mygallerybook/core/app_colors.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.blue.withOpacity(0.8),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(AppColors.blue.withOpacity(0.9), BlendMode.srcOver),
            image: AssetImage(AppAssets.backGroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              AppAssets.appIcon,
              width: width * 0.6,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Powered by Mygallerybook",
                style: textTheme.labelMedium!
                    .copyWith(fontSize: 16, color: AppColors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
