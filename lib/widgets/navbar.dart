import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:portfolio_website/utils/text_themes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

  Widget MobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(onTap: () {}, child: Icon(Icons.menu)),
          SizedBox(
            width: 16,
          ),
          Image(
            image: AssetImage(AppImages.logo),
            height: 32,
            width: 32,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Priyanshu's Portfolio",
            style: Theme.of(context).textTheme.headlineSmall,
          )
        ],
      ),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(AppImages.logo),
                height: 62,
                width: 62,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Priyanshu's Portfolio",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
              SizedBox(
                width: 24,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "About",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
              SizedBox(
                width: 24,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Experience",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
              SizedBox(
                width: 24,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Portfolio",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
            ],
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "Contact Me",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 24, vertical: 16))),
          ),
        ],
      ),
    );
  }
}
