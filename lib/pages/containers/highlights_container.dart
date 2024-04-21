import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/models/highlight_items.dart';
import 'package:portfolio_website/utils/app_colors.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HighlightsContainer extends StatelessWidget {
  const HighlightsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final List<HighLightItem> highlightList = [
      HighLightItem(
          "Intern @Chatwise",
          "Worked as an android app developer at Chatwise UK limited",
          AppImages.briefcase_img),
      HighLightItem(
          "21+subs @Youtube",
          "Make videos related to flutter and android studio",
          AppImages.youtube),
      HighLightItem(
          "4.7 star rating @Fiverr",
          "Worked on many freelance project on fiverr with 16+ 5 star ratings",
          AppImages.fiverr_img),
      HighLightItem(
          "20+ Projects",
          "Worked on 20+ projects including freelance and personal projects",
          AppImages.computer_img),
    ];
    return ScreenTypeLayout(
      mobile: MobileHighlightContainer(context, w, highlightList),
      desktop: DesktopHighlightContainer(context, w, highlightList),
    );
  }

  Widget MobileHighlightContainer(
      BuildContext context, double w, List<HighLightItem> highLightList) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w / 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hightlights!",
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontSize: 32),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Some highlights about myself",
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontSize: 14, color: Colors.grey.shade400),
          ),
          SizedBox(
            height: 32,
          ),
          CarouselSlider(
              items: highLightList
                  .map((item) => HighlightContainer(
                      w: w, isMobile: true, highlightItem: item))
                  .toList(),
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                viewportFraction: 1,
                autoPlayInterval: Duration(seconds: 2),
              ))
        ],
      ),
    );
  }

  Widget DesktopHighlightContainer(
      BuildContext context, double w, List<HighLightItem> highLightList) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w / 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hightlights!",
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontSize: w / 24),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Some highlights about myself",
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontSize: w / 72, color: Colors.grey.shade400),
          ),
          SizedBox(
            height: 32,
          ),
          CarouselSlider(
              items: highLightList
                  .map((item) => HighlightContainer(
                      w: w, isMobile: false, highlightItem: item))
                  .toList(),
              options: CarouselOptions(
                height: w / 9,
                autoPlay: true,
                viewportFraction: 0.34,
                autoPlayInterval: Duration(seconds: 2),
              ))
        ],
      ),
    );
  }
}

class HighlightContainer extends StatelessWidget {
  const HighlightContainer(
      {super.key,
      required this.w,
      required this.isMobile,
      required this.highlightItem});

  final double w;
  final bool isMobile;
  final HighLightItem highlightItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(color: Colors.grey.shade900),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 16,
                ),
                Image.asset(
                  highlightItem.image,
                  width: isMobile ? 50 : w / 24,
                  height: isMobile ? 50 : w / 24,
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      highlightItem.title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontSize: isMobile ? 16 : w / 76),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: isMobile ? w * 0.4 : w / 10,
                      child: Text(
                        highlightItem.description,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.grey.shade400,
                            fontSize: isMobile ? 12 : w / 114),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
