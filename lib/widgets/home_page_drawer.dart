import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key, required this.scaffoldKey, required this.itemScrollController});

  final GlobalKey<ScaffoldState> scaffoldKey;
  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade900,
      child: Container(
        color: Colors.grey.shade900,
        child: ListView(
          children: [
            Container(
              color: Colors.grey.shade900,
              child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900),
                    margin: EdgeInsets.zero,
                    currentAccountPicture:
                    CircleAvatar(backgroundImage: AssetImage(AppImages.myProfilePic)),
                    accountEmail: Text(
                      "prianshu831706@gmail.com",
                      style: TextStyle(
                          color: Colors.white),
                    ),
                    accountName: Text(
                      "Priyanshu Verma",
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  )),
            ),
            ListTile(
              onTap: () {
                scaffoldKey.currentState!.closeDrawer();
                itemScrollController.scrollTo(
                    index: 1,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubic);
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
            ListTile(
              onTap: () {
                scaffoldKey.currentState!.closeDrawer();
                itemScrollController.scrollTo(
                    index: 2,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubic);
              },
              leading: Icon(
                CupertinoIcons.bag,
                color: Colors.white,
              ),
              title: Text(
                "Experience",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
            ListTile(
              onTap: () {
                scaffoldKey.currentState!.closeDrawer();
                itemScrollController.scrollTo(
                    index: 3,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubic);
              },
              leading: Icon(
                Icons.code,
                color: Colors.white,
              ),
              title: Text(
                "Skills",
                style: TextStyle(
                    color:Colors.white,
                    fontSize: 16),
              ),
            ),
            ListTile(
              onTap: () {
                scaffoldKey.currentState!.closeDrawer();
                itemScrollController.scrollTo(
                    index: 4,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubic);
              },
              leading: Icon(
                CupertinoIcons.bolt_circle,
                color: Colors.white,
              ),
              title: Text(
                "Portfolio",
                style: TextStyle(
                    color:Colors.white,
                    fontSize: 16),
              ),
            ),
            ListTile(
              onTap: () {
                scaffoldKey.currentState!.closeDrawer();
                itemScrollController.scrollTo(
                    index: 5,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubic);
              },
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Contact Me",
                style: TextStyle(
                    color:Colors.white,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
