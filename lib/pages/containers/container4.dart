import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/app_colors.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container3State();
}

class _Container3State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout(
      mobile: MobileContainer4(context, w),
      desktop: DesktopContainer4(context, w),
    );
  }

  Widget MobileContainer4(BuildContext context, double w) {
    return Container(
      width: w,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "My Work",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.grey.shade400),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Projects",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
                "Following projects showcases my skills and experience through real-world examples of my work. Each project is briefly described with links to code repositories and live demos in it. It reflects my ability to solve complex problems, work with different technologies, and manage projects effectively.",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                textAlign: TextAlign.center),
          ),
          SizedBox(height: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MobileProjectContainer(),
              MobileProjectContainer(),
              MobileProjectContainer()
            ],
          )
        ],
      ),
    );
  }

  Widget DesktopContainer4(BuildContext context, double w) {
    return Container(
      width: w,
      margin: EdgeInsets.symmetric(horizontal: w / 12, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Work",
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Colors.grey.shade500, fontSize: w/48),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 16,
          ),
          Text("Projects",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontSize: w / 24),
              textAlign: TextAlign.start),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: w / 2,
            child: Text(
                "Following projects showcases my skills and experience through real-world examples of my work. Each project is briefly described with links to code repositories and live demos in it. It reflects my ability to solve complex problems, work with different technologies, and manage projects effectively.",
                style: TextStyle(color: Colors.grey.shade500, fontSize: w / 92),
                textAlign: TextAlign.start),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DesktopProjectContainer(w: w),
              DesktopProjectContainer(w: w),
              DesktopProjectContainer(w: w)
            ],
          )
        ],
      ),
    );
  }
}

class MobileProjectContainer extends StatelessWidget {
  const MobileProjectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: double.infinity ,
          decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        AppImages.dashboard,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Event Management App",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Web-based platform that allows users to search, book, and manage car rentals from various providers, providing a convenient and efficient solution for transportation needs.",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                ),
                SizedBox(
                  height: 16,
                ),
                MobileProjectContainerBottomButtons(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class DesktopProjectContainer extends StatelessWidget {
  const DesktopProjectContainer({super.key, required this.w});

  final double w;

  @override
  Widget build(BuildContext context) {
    List<String> tagList = ["android", "xml", "firebase", "fcm", "mvvm"];
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: w / 4,
          decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        AppImages.dashboard,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Event Management App",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Web-based platform that allows users to search, book, and manage car rentals from various providers, providing a convenient and efficient solution for transportation needs.",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                ),
                SizedBox(
                  height: 16,
                ),
                DesktopProjectContainerBottomButtons(w: w, tagList: tagList),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MobileProjectContainerBottomButtons extends StatelessWidget {
  const MobileProjectContainerBottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.live_tv),
              label: Text(
                "Live Preview",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 12),
              ),
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
            ),
            SizedBox(
              width: 16,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.download),
              label: Text(
                "Download",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 12),
              ),
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.code),
              label: Text(
                "Github",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 12),
              ),
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
            ),
            SizedBox(
              width: 16,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.play_circle),
              label: Text(
                "Playstore",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 12),
              ),
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Text("#androidstudio #firebase #xml #mvvm", style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.w600, fontSize: 12), textAlign: TextAlign.start,)
      ],
    );
  }
}


class DesktopProjectContainerBottomButtons extends StatelessWidget {
  const DesktopProjectContainerBottomButtons({super.key, required this.w, required this.tagList});

  final double w;
  final List<String> tagList;

  @override
  Widget build(BuildContext context) {
    if (w > 1200) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.preview),
                label: Text(
                  "Live Preview",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: w/120),
                ),
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
              ),
              SizedBox(
                width: 16,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.download),
                label: Text(
                  "Download",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: w/120),
                ),
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.code),
                label: Text(
                  "Github",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: w/120),
                ),
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
              ),
              SizedBox(
                width: 16,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.play_circle),
                label: Text(
                  "Playstore",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: w/120),
                ),
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Text("#androidstudio #firebase #xml #mvvm", style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.w600, fontSize: 12), textAlign: TextAlign.start,)
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.preview),
            label: Text(
              "Live Preview",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 14),
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
          ),
          SizedBox(height: 24,),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.download),
            label: Text(
              "Download",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 14),
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
          ),
          SizedBox(height: 24,),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.code),
            label: Text(
              "Github",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 14),
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
          ),
          SizedBox(height: 24,),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.play_circle),
            label: Text(
              "Playstore",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 14),
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
          ),
          SizedBox(
            height: 24,
          ),

          Text("#androidstudio #firebase #xml #mvvm", style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.w600, fontSize: 12),)

        ],
      );
    }
  }
}
