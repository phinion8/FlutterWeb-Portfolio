import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_media_buttons/social_media_button.dart';

class Container5 extends StatelessWidget {
  const Container5({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout(
      mobile: MobileContainer5(context),
      desktop: DesktopContainer5(context, w),
    );
  }
  Widget DesktopContainer5(BuildContext context, double w){
    return Container(
      width: w,
      margin: EdgeInsets.symmetric(horizontal: w/12, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Contact", style: Theme.of(context).textTheme.headlineLarge,),
          SizedBox(height: 24,),
          Container(
            width: w/1.8,
            margin: EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: w/16,
                        height: w/16,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blueAccent, width: 3),
                            borderRadius: BorderRadius.circular(w/16)),
                        child: ClipRRect( borderRadius: BorderRadius.circular(w/16), child: Image.asset(AppImages.myProfilePic, fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Priyanshu Verma",
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(width: 24,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Contact Me", style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: w/72), textAlign: TextAlign.start,),
                      SizedBox(height: 8,),
                      SizedBox(width: w/5,child: Text("If you want to contact me then drop me your mail at 👇", style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: w/108, color: Colors.grey.shade600), textAlign: TextAlign.start,)),
                      SizedBox(height: 8,),
                      Text("Priyanshu831780@gmail.com", style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: w/92), textAlign: TextAlign.start,),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          SocialMediaButton.github(),
                          SocialMediaButton.youtube(),
                          SocialMediaButton.instagram(),
                          SocialMediaButton.linkedin(),
                        ],
                      )
                    ],
                  ),
                  SvgPicture.asset(AppImages.contact_illustration, width: w/9, height: w/9)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget MobileContainer5(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Contact", style: Theme.of(context).textTheme.headlineLarge,),
          SizedBox(height: 24,),
          Container(
            margin: EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(16)
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 72,
                            height: 72,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blueAccent, width: 3),
                                borderRadius: BorderRadius.circular(72)),
                            child: ClipRRect( borderRadius: BorderRadius.circular(72), child: Image.asset(AppImages.myProfilePic, fit: BoxFit.cover)),

                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Priyanshu Verma",
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 24,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("If you want to contact me then drop me your mail at 👇", style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14, color: Colors.grey.shade600), textAlign: TextAlign.center,),
                      SizedBox(height: 8,),
                      Text("Priyanshu831780@gmail.com", style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16), textAlign: TextAlign.center,),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SocialMediaButton.github(),
                          SocialMediaButton.youtube(),
                          SocialMediaButton.instagram(),
                          SocialMediaButton.linkedin(),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
