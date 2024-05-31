import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygallerybook/app/modules/login/controllers/login_controller.dart';
import 'package:mygallerybook/core/app_assets.dart';
import 'package:mygallerybook/core/app_colors.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
        body: Column(
      children: [
        Container(
          height: height * 0.4,
          width: width,
          color: AppColors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.appIcon,
                height: 150,
              ),
              const SizedBox(height: 12),
              Text(
                "My Gallery Book",
                style: textTheme.bodyLarge!
                    .copyWith(fontSize: 26, color: AppColors.white),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: controller.phoneNumber,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(width*0.4),
                        borderSide: BorderSide.none,
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
