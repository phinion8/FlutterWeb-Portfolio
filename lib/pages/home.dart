import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/containers/container4.dart';
import 'package:portfolio_website/pages/containers/footer_container.dart';
import 'package:portfolio_website/pages/containers/highlights_container.dart';
import 'package:portfolio_website/widgets/home_page_drawer.dart';
import 'package:portfolio_website/widgets/navbar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'containers/container1.dart';
import 'containers/container2.dart';
import 'containers/container3.dart';
import 'containers/container5.dart';
import 'containers/container6.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    final ItemScrollController itemScrollController = ItemScrollController();
    List<Widget> containerList = [
      NavBar(scaffoldKey: _key, itemScrollController: itemScrollController,),
      Container1(),
      HighlightsContainer(),
      Container2(),
      Container3(),
      Container4(),
      Container6(),
      Container5(),
      FooterContainer()
    ];
    print(w.toString());
    return Scaffold(
      key: _key,
      body: SelectionArea(
        child: ScrollablePositionedList.builder(
          itemScrollController: itemScrollController,
          itemCount: containerList.length,
          itemBuilder: (context, index) => containerList[index],
        ),
      ),
      drawer: HomePageDrawer(scaffoldKey: _key, itemScrollController: itemScrollController,),
    );
  }
}
