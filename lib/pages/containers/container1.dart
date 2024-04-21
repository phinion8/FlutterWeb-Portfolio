import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_website/pages/containers/container2.dart';
import 'package:portfolio_website/utils/app_colors.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:portfolio_website/utils/gradient_text.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:typing_animation/typing_animation.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  _Container1State createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer1() {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 280,
            width: 280,
            child: Image.asset(AppImages.threed_illustration),
          ),
              GradientText('Hi!👋 I\'m Priyanshu Verma',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: w! / 12, fontWeight: FontWeight.bold, height: 1.5),
                  gradient:
                  LinearGradient(colors: [AppColors.primary, Colors.pink]))
          ,
          SizedBox(
            height: 16,
          ),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText("Professional Mobile App Developer", textStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16), textAlign: TextAlign.center),
            TyperAnimatedText("Professional Android App Developer", textStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),textAlign: TextAlign.center),
            TyperAnimatedText("Professional Flutter Developer",textStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),textAlign: TextAlign.center),
            TyperAnimatedText("Professional App UI/UX Designer", textStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),textAlign: TextAlign.center)
          ]),
          SizedBox(
            height: 16,
          ),
          Text(
              "Working on this field for more than 2 years and have worked on 20+ projects. Recently worked as an Android Development Intern at Chatwise UK Limited",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14)),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  label: Text(
                    "Hire me",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge,
                  ),
                  icon: Icon(Icons.work_outline),
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                          horizontal: 28, vertical: 16)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))))),
              SizedBox(
                width: 16,
              ),
              OutlinedButton.icon(
                  onPressed: () {},
                  label: Text(
                    "Resume",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge,
                  ),
                  icon: Icon(Icons.downloading_outlined),
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                          horizontal: 28, vertical: 16)))),
            ],
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerSocialIcon(w: w, imageString: AppImages.github),
              ContainerSocialIcon(w: w, imageString: AppImages.playStore),
              ContainerSocialIcon(w: w, imageString: AppImages.linkedin),
              ContainerSocialIcon(w: w, imageString: AppImages.youtube),
            ],
          )
        ],
      ),
    );
  }

  //============== DESKTOP =============

  Widget DesktopContainer1() {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 12, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText('Hi!👋\nI\'m Priyanshu Verma',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: w! / 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2),
                    gradient: LinearGradient(
                        colors: [AppColors.primary, Colors.pink])),
                SizedBox(
                  height: 20,
                ),
                AnimatedTextKit(animatedTexts: [
                  TyperAnimatedText("Professional Mobile App Developer", textStyle: TextStyle(color: Colors.grey.shade400, fontSize: 24),),
                  TyperAnimatedText("Professional Android App Developer", textStyle: TextStyle(color: Colors.grey.shade400, fontSize: 24),),
                  TyperAnimatedText("Professional Flutter Developer",textStyle: TextStyle(color: Colors.grey.shade400, fontSize: 24),),
                  TyperAnimatedText("Professional App UI/UX Designer", textStyle: TextStyle(color: Colors.grey.shade400, fontSize: 24),)
                ]),
                SizedBox(
                  height: 24,
                ),
                Text(
                    "Working on this field for more than 2 years and have worked on 20+ projects.\nRecently worked as an Android Development Intern at Chatwise UK Limited",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 16)),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Hire me",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontSize: w / 92),
                        ),
                        icon: Icon(Icons.work_outline),
                        style: ButtonStyle(
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: w / 42, vertical: 24)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(100))))),
                    SizedBox(
                      width: 16,
                    ),
                    OutlinedButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Download Resume",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontSize: w / 92),
                        ),
                        icon: Icon(Icons.downloading_outlined),
                        style: ButtonStyle(
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: w / 42, vertical: 24)))),
                  ],
                ),

                const SizedBox(height: 24,),
                Row(
                  children: [
                    ContainerSocialIcon(w: w, imageString: AppImages.github),
                    ContainerSocialIcon(w: w, imageString: AppImages.playStore),
                    ContainerSocialIcon(w: w, imageString: AppImages.linkedin),
                    ContainerSocialIcon(w: w, imageString: AppImages.youtube),
                  ],
                )

              ],
            ),
          )),
          Expanded(
            child: Container(
              child: Image.asset(AppImages.threed_illustration),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerSocialIcon extends StatelessWidget {
   const ContainerSocialIcon({super.key, required this.w, required this.imageString});

  final double w;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade100, width: 1),
            borderRadius: BorderRadius.circular(48)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imageString),
        ),
      ),
    );
  }
}

