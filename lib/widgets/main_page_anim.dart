import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_website/utils/app_images.dart';

class MainPageAnim extends StatelessWidget {
  const MainPageAnim({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Lottie.asset(AppImages.main_page_anim, width: (w>1300) ? 600 : 450, height: (w>1300) ? 600 : 450,);
  }
}
