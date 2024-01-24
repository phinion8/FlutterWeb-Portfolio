import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/containers/container4.dart';
import 'package:portfolio_website/utils/app_colors.dart';
import 'package:portfolio_website/utils/gradient_text.dart';
import 'package:portfolio_website/widgets/main_page_anim.dart';
import 'package:portfolio_website/widgets/navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'containers/container1.dart';
import 'containers/container2.dart';
import 'containers/container3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    print(w.toString());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            // ScreenTypeLayout(
            //   mobile: Container(),
            //   tablet: Container(),
            //   desktop: Container(
            //     margin: const EdgeInsets.only(left: 62),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Container(
            //               width: w*0.5,
            //               child: Column(
            //                 children: [
            //                   SizedBox(
            //                     width: w*0.5,
            //                     child: Text(
            //                       "Hi!👋",
            //                       style: TextStyle(fontSize: 72),
            //                       textAlign: TextAlign.left,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: w*0.5,
            //                     child: GradientText(
            //                       "I'm Priyanshu Verma",
            //                       style: TextStyle(
            //                           fontSize: 72,
            //                           fontWeight: FontWeight.bold),
            //                       gradient: LinearGradient(
            //                         colors: [
            //                           AppColors.primary,
            //                           Colors.pink
            //                         ]
            //                       ),
            //                     ),
            //                   ),
            //                   SizedBox(height: 16,),
            //                   SizedBox(
            //                     width: w*0.5,
            //                     child: Text(
            //                       "A Mobile App Developer",
            //                       style: TextStyle(fontSize: 24),
            //                       textAlign: TextAlign.start,
            //                     ),
            //                   ),
            //                   SizedBox(height: 24,),
            //                   SizedBox(
            //                     width: w*0.5,
            //                     child: Text(
            //                       "Working on this field for more than 2 years and have worked on 20+ projects.\nRecently worked as an Android Development Intern at Chatwise UK Limited",
            //                       style: TextStyle(fontSize: 16),
            //                       textAlign: TextAlign.start,
            //                     ),
            //                   ),
            //                   SizedBox(height: 32,),
            //                   Row(
            //                     children: [
            //                       ElevatedButton.icon(onPressed: (){}, label: Text("Hire me", style: Theme.of(context).textTheme.headlineSmall,), icon: Icon(Iconsax.send_sqaure_2),style: ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 32, vertical: 24)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))))),
            //                       SizedBox(width: 16,),
            //                       OutlinedButton.icon(onPressed: (){}, label: Text("Download Resume", style: Theme.of(context).textTheme.headlineSmall,), icon: Icon(Iconsax.document_download),style: ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 32, vertical: 24))))
            //                     ],
            //                   ),
            //                   SizedBox(height: 32,),
            //
            //                 ],
            //               ),
            //             ),
            //             MainPageAnim()
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}
