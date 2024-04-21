import 'dart:html';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/models/project_item.dart';
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
    double h = MediaQuery.of(context).size.height;
    List<ProjectItem> projectList = [
      ProjectItem(
        "Event Management App (Kotlin+XML)",
        "App based platform that allows users to create, search and delete an event with features like google one tap sign in, realtime notifications, chat with event collaborators, comment feature on events.",
        AppImages.dashboard,
        "https://www.google.com",
        null,
        "githubLink",
        "playStoreLink",
        "#androidstudio #firebase #fcm #mvvm",
      ),
      ProjectItem(
          "SocioLive (Java+XML)\n2000+ downloads on play store",
          "App based platform to do video call with random stranger. Used firebase cloud firestore, google sign in and admob.",
          AppImages.socio_live_preview,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #java #xml #firebase"),
      ProjectItem(
          "Student Expenses Tracker (Jetpack Compose + RoomDB)",
          "App based platform to track expenses of user including a graphical view of the weekly expense and ability to add daily budget and weekly budget.",
          AppImages.expenses_tracker_preview,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #jetpackcompose #roomdb #mvvm"),
      ProjectItem(
          "Krishak Seva (Kotlin+XML)",
          "A mobile application solution facilitating a connection between farmers and experts, enabling users to send images and describe crop-related issues to experts. The app incorporates a reward system, a location-based shop, and utilizes the ChatGPT API to implement a real-time chatbot for seamless communication.",
          AppImages.krishak_seva_preview,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #kotlin #xml #firebase"),
      ProjectItem(
          "Daily Journal (Jetpack Compose + MongoDB Atlas And Realm)\nWith Modularization",
          "A Daily Journal app developed using Jetpack Compose, integrated with MongoDB Atlas and Realm, and incorporating a modularization approach.",
          AppImages.daily_jounral_preview,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #jetpackcompose #modularization #mongodb"),
      ProjectItem(
          "GCE+ E-Learning (Kotlin+XML)",
          "An e-learning platform offering subject-specific and topic-specific educational content to students, featuring an interactive multiple-choice question (MCQ) game within the app, as well as the capability to download subject materials.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #kotlin #xml #firebase"),
      ProjectItem(
          "Pokelist (Jetpack Compose+Retrofit)",
          "The application is a platform that displays comprehensive information about all Pokémon, retrieving data from the PokeAPI through the use of Retrofit.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #retrofit #jetpackcompose"),
      ProjectItem(
          "Wallpaper App (Kotlin+XML)",
          "A simple wallpaper app that allow users to download and set different kind of wallpapers.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #kotlin #xml #firebase"),
      ProjectItem(
          "Taskify (Kotlin+XML)",
          "An reward app that give users some tasks and after completing those tasks user get some rewards points which can be redeemed for gifts.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #kotlin #xml #firebase"),
      ProjectItem(
          "Social Media Marketing Company App (Jetpack Compose)",
          "An app solution for a social media marketing company",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #jetpackcompose #firebase"),
      ProjectItem(
          "Quotez (Kotlin+XML)",
          "A straightforward mobile application designed to provide users with daily motivational quotes. The app includes a feature allowing users to easily share these quotes across various social media platforms.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #kotlin #xml #gson"),
      ProjectItem(
          "Crypto Info (JetpackCompose+Retrofit)",
          "A realtime crypto currency information tracker, the app also lets users to create a watchlist for their favorite crypto currency.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #jetpackcompose #mvvm #retrofit"),
      ProjectItem(
          "Ecommerce App (Flutter+GetX)",
          "A basic ecommerce app with google authentication and product page",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#flutter #dart #getx"),
      ProjectItem(
          "Ecommerce App (Java+XML+Volley)",
          "An uncomplicated e-commerce application seamlessly integrated with a PHP admin panel. Users can view a product list along with detailed descriptions, add items to their cart, and employ a search functionality. The app also incorporates a payment screen for a smooth checkout process.",
          AppImages.ecommerce_app_preview,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #java #xml #volley"),
      ProjectItem(
          "Anime Details App (Jetpack Compose+Ktor+Pagination)",
          "A fundamental anime details application that offers information about anime characters. The backend is developed using Ktor, and the app utilizes the Paging Library to efficiently retrieve and display lists of anime characters.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #jetpackcompose #paging3 #ktor"),
      ProjectItem(
          "TODO (Jetpack Compose+Room)",
          "A basic to do list app with ability to categorize the task with priority and ability to filter list based on category.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #jetpackcompose #room"),
      ProjectItem(
          "Reward App (Kotlin+XML)",
          "A reward application that allows users to engage in various games such as scratch cards, spin wheels, and lucky number activities. The app also features a lucky draw system, providing users with opportunities to win rewards",
          AppImages.rewards_app_preview,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #kotlin #xml #firebase"),
      ProjectItem(
          "BS Grewal Book App (Kotlin+XML)\n5000+ Downloads on play store",
          "A app based on the math book written by BS Grewal",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #kotlin #xml"),
      ProjectItem(
          "Bhulekh (Jetpack Compose)",
          "A basic website viewing app of the government's bhulekh website.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#androidstudio #kotlin #xml"),
      ProjectItem(
          "Portfolio Website (Flutter)",
          "A professional and clean portfolio website build using flutter web.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#flutter #dart"),
      ProjectItem(
          "Meals App (Flutter)",
          "A basic meals app to get cooking details of categories and regions.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadcLink",
          "githubLink",
          "playStoreLink",
          "#flutter #dart"),
      ProjectItem(
          "Travel Goals Landing Page(HTML + CSS)",
          "A basic travel goals landing page built using html, css and javascript.",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#html #css"),
      ProjectItem(
          "TIC TAC TOE (HTML + CSS + JS)",
          "A multiplayer tic tac toe game website built using html, css and javascript",
          AppImages.dashboard,
          "livePreviewLink",
          "downloadLink",
          "githubLink",
          "playStoreLink",
          "#html #css #js"),
    ];
    return ScreenTypeLayout(
      mobile: MobileContainer4(context, w, h, projectList),
      desktop: DesktopContainer4(context, w, h, projectList),
    );
  }

  Widget MobileContainer4(
      BuildContext context, double w, double h, List<ProjectItem> projectList) {
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
                style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            height: 8,
          ),
          CarouselSlider(
              items: projectList
                  .map((item) => MobileProjectContainer(projectItem: item))
                  .toList(),
              options: CarouselOptions(
                  height: h * 0.9,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 1300)))
        ],
      ),
    );
  }

  Widget DesktopContainer4(
      BuildContext context, double w, double h, List<ProjectItem> projectList) {
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
                ?.copyWith(color: Colors.grey.shade500, fontSize: w / 48),
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
          CarouselSlider(
              items: projectList
                  .map((item) => DesktopProjectContainer(
                        w: w,
                        projectItem: item,
                      ))
                  .toList(),
              options: CarouselOptions(
                height: (w > 1200) ? h * 0.9 : h * 1.05,
                autoPlay: true,
                viewportFraction: 0.335,
                autoPlayInterval: Duration(seconds: 2),
              )),
        ],
      ),
    );
  }
}

class MobileProjectContainer extends StatelessWidget {
  const MobileProjectContainer({super.key, required this.projectItem});

  final ProjectItem projectItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
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
                        projectItem.image,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  projectItem.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  projectItem.description,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                ),
                SizedBox(
                  height: 16,
                ),
                MobileProjectContainerBottomButtons(
                  projectItem: projectItem,
                ),
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
  const DesktopProjectContainer(
      {super.key, required this.w, required this.projectItem});

  final double w;
  final ProjectItem projectItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: w / 3.8,
        decoration: BoxDecoration(
            color: Colors.grey.shade900,
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
                      projectItem.image,
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                projectItem.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                projectItem.description,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
              ),
              SizedBox(
                height: 16,
              ),
              DesktopProjectContainerBottomButtons(
                w: w,
                projectItem: projectItem,
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileProjectContainerBottomButtons extends StatelessWidget {
  const MobileProjectContainerBottomButtons(
      {super.key, required this.projectItem});

  final ProjectItem projectItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(CupertinoIcons.bolt_circle),
              label: Text(
                "Live Preview",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(14))),
            ),
            SizedBox(
              width: 16,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.downloading_outlined),
              label: Text(
                "Download",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(14))),
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
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(14))),
            ),
            SizedBox(
              width: 16,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.play_circle_outline),
              label: Text(
                "Playstore",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(14))),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          projectItem.hashTags,
          style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.w600,
              fontSize: 12),
          textAlign: TextAlign.start,
        )
      ],
    );
  }
}

class DesktopProjectContainerBottomButtons extends StatelessWidget {
  const DesktopProjectContainerBottomButtons(
      {super.key, required this.w, required this.projectItem});

  final double w;
  final ProjectItem projectItem;

  @override
  Widget build(BuildContext context) {
    if (w > 1200) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              (projectItem.livePreviewLink != null)
                  ? ElevatedButton.icon(
                      onPressed: () {
                        window.open(projectItem.livePreviewLink!, "new tab");
                      },
                      icon: Icon(Icons.live_tv_outlined),
                      label: Text(
                        "Live Preview",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: w / 120),
                      ),
                      style: ButtonStyle(
                          padding:
                              MaterialStatePropertyAll(EdgeInsets.all(16))),
                    )
                  : SizedBox(),
              SizedBox(
                width: 16,
              ),
              (projectItem.downloadLink != null)
                  ? ElevatedButton.icon(
                      onPressed: () {
                        window.open(projectItem.downloadLink!, "new tab");
                      },
                      icon: Icon(Icons.downloading_outlined),
                      label: Text(
                        "Download",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: w / 120),
                      ),
                      style: ButtonStyle(
                          padding:
                              MaterialStatePropertyAll(EdgeInsets.all(16))),
                    )
                  : SizedBox()
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              (projectItem.githubLink != null)
                  ? ElevatedButton.icon(
                      onPressed: () {
                        window.open(projectItem.githubLink!, "new tab");
                      },
                      icon: Icon(Icons.code),
                      label: Text(
                        "Github",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: w / 120),
                      ),
                      style: ButtonStyle(
                          padding:
                              MaterialStatePropertyAll(EdgeInsets.all(16))),
                    )
                  : SizedBox(),
              SizedBox(
                width: 16,
              ),
              (projectItem.playStoreLink != null)
                  ? ElevatedButton.icon(
                      onPressed: () {
                        window.open(projectItem.playStoreLink!, "new tab");
                      },
                      icon: Icon(Icons.play_circle_outline),
                      label: Text(
                        "Playstore",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: w / 120),
                      ),
                      style: ButtonStyle(
                          padding:
                              MaterialStatePropertyAll(EdgeInsets.all(16))),
                    )
                  : SizedBox(),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "#androidstudio #firebase #xml #mvvm",
            style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w600,
                fontSize: 12),
            textAlign: TextAlign.start,
          )
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bolt_circle),
            label: Text(
              "Live Preview",
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
          ),
          SizedBox(
            height: 24,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.download),
            label: Text(
              "Download",
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
          ),
          SizedBox(
            height: 24,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.code),
            label: Text(
              "Github",
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
          ),
          SizedBox(
            height: 24,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.play_circle),
            label: Text(
              "Playstore",
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            projectItem.hashTags,
            style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w600,
                fontSize: 12),
          )
        ],
      );
    }
  }
}
