import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout(
      mobile: MobileContainer3(context, w),
      desktop: DesktopContainer3(context, w),
    );
  }

  Widget MobileContainer3(BuildContext context, double w) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 42),
      child: Column(
        children: [
          Text(
            "My Tech Stack!",
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "These are the technologies that i have worked with",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.grey.shade600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.android_studio_logo,
                  techStackTitle: "Android\nStudio"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.flutter_logo,
                  techStackTitle: "Flutter"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.kotlin_logo,
                  techStackTitle: "Kotlin"),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.dart_logo,
                  techStackTitle: "Dart"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.jetpack_compose,
                  techStackTitle: "Jetpack\nCompose"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.firebase_logo,
                  techStackTitle: "Firebase"),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.figma_logo,
                  techStackTitle: "Figma"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.html_logo,
                  techStackTitle: "HTML5"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.css_logo,
                  techStackTitle: "CSS3"),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.javascript_logo,
                  techStackTitle: "Java\nScript"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.react_js_logo,
                  techStackTitle: "ReactJs"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.node_js_logo,
                  techStackTitle: "NodeJs"),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.mongo_db_logo,
                  techStackTitle: "MongoDB"),
              TechStackWidgetMobile(
                  techStackLogoPath: AppImages.java_logo,
                  techStackTitle: "Java"),
            ],
          )
        ],
      ),
    );
  }

  Widget DesktopContainer3(BuildContext context, double w) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 12, vertical: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("My Tech Stack!",
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center),
          SizedBox(
            height: 16,
          ),
          Text(
            "These are the technologies that i have worked with,",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.grey.shade600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.android_studio_logo,
                  techStackTitle: "Android\nStudio"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.flutter_logo,
                  techStackTitle: "Flutter"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.kotlin_logo,
                  techStackTitle: "Kotlin"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.dart_logo,
                  techStackTitle: "Dart"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.jetpack_compose,
                  techStackTitle: "jetpack\nCompose"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.java_logo,
                  techStackTitle: "Java"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.firebase_logo,
                  techStackTitle: "Firebase"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.figma_logo,
                  techStackTitle: "Figma")
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.html_logo,
                  techStackTitle: "HTML5"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.css_logo,
                  techStackTitle: "CSS3"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.javascript_logo,
                  techStackTitle: "JavaScript"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.react_js_logo,
                  techStackTitle: "React Js"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.node_js_logo,
                  techStackTitle: "Node Js"),
              TechStackWidgetDesktop(
                  w: w,
                  techStackLogoPath: AppImages.mongo_db_logo,
                  techStackTitle: "Mongo DB"),
            ],
          )
        ],
      ),
    );
  }
}

class TechStackWidgetDesktop extends StatelessWidget {
  const TechStackWidgetDesktop(
      {super.key,
      required this.w,
      required this.techStackLogoPath,
      required this.techStackTitle});

  final double w;
  final String techStackLogoPath;
  final String techStackTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: w / 20,
            height: w / 20,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blueAccent, width: 3),
                borderRadius: BorderRadius.circular(w / 20)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(techStackLogoPath, fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            techStackTitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class TechStackWidgetMobile extends StatelessWidget {
  const TechStackWidgetMobile(
      {super.key,
      required this.techStackLogoPath,
      required this.techStackTitle});

  final String techStackLogoPath;
  final String techStackTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blueAccent, width: 3),
                borderRadius: BorderRadius.circular(62)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(techStackLogoPath, fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            techStackTitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
