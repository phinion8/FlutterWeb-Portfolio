import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:portfolio_website/utils/measure_size_render_object.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return ScreenTypeLayout(
      mobile: DesktopContainer2(w, h, true),
      desktop: DesktopContainer2(w, h, false),
    );
  }

  Widget MobileContainer2(double w, double h) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 12, vertical: 42),
      child: Column(
        children: [
          Text(
            "What i have done so far",
            style: TextStyle(fontSize: 24, color: Colors.grey.shade600),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Work Experience!",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: true,
            isLeft: true,
            positionTitle: "Android App Developer",
            companyName: "Mih Academy",
            companyImg: AppImages.linkedin,
            dateRange: "March 2022 - April 2022",
            points1:
                "👉 Developing and maintaining web applications using React.js and other related technologies.",
            points2:
                "👉 Collaborating with cross-functional teams including designers, product managers, and other developers to create high-quality products.",
            points3:
                "👉 Implementing responsive design and ensuring cross-browser compatibility.",
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: true,
            isLeft: false,
            positionTitle: "Android App Developer",
            companyName: "Mih Academy",
            companyImg: AppImages.linkedin,
            dateRange: "March 2022 - April 2022",
            points1:
                "👉 Developing and maintaining web applications using React.js and other related technologies.",
            points2:
                "👉 Collaborating with cross-functional teams including designers, product managers, and other developers to create high-quality products.",
            points3:
                "👉 Implementing responsive design and ensuring cross-browser compatibility.",
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: true,
            isLeft: true,
            positionTitle: "Android App Developer",
            companyName: "Mih Academy",
            companyImg: AppImages.linkedin,
            dateRange: "March 2022 - April 2022",
            points1:
                "👉 Developing and maintaining web applications using React.js and other related technologies.",
            points2:
                "👉 Collaborating with cross-functional teams including designers, product managers, and other developers to create high-quality products.",
            points3:
                "👉 Implementing responsive design and ensuring cross-browser compatibility.",
          ),
        ],
      ),
    );
  }

  Widget DesktopContainer2(double w, double h, bool isMobile) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 12, vertical: 42),
      child: Column(
        children: [
          Text(
            "What i have done so far",
            style: TextStyle(fontSize: isMobile? 16 : w / 48, color: Colors.grey.shade600),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Work Experience!",
            style: TextStyle(fontSize: isMobile ? 24 : w / 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: isMobile,
            isLeft: true,
            positionTitle: "Android App Developer",
            companyName: "Mih Academy",
            companyImg: AppImages.linkedin,
            dateRange: "March 2022 - April 2022",
            points1:
                "👉 Developing and maintaining web applications using React.js and other related technologies.",
            points2:
                "👉 Collaborating with cross-functional teams including designers, product managers, and other developers to create high-quality products.",
            points3:
                "👉 Implementing responsive design and ensuring cross-browser compatibility.",
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: isMobile,
            isLeft: false,
            positionTitle: "Android App Developer",
            companyName: "Mih Academy",
            companyImg: AppImages.linkedin,
            dateRange: "March 2022 - April 2022",
            points1:
                "👉 Developing and maintaining web applications using React.js and other related technologies.",
            points2:
                "👉 Collaborating with cross-functional teams including designers, product managers, and other developers to create high-quality products.",
            points3:
                "👉 Implementing responsive design and ensuring cross-browser compatibility.",
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: isMobile,
            isLeft: true,
            positionTitle: "Android App Developer",
            companyName: "Mih Academy",
            companyImg: AppImages.linkedin,
            dateRange: "March 2022 - April 2022",
            points1:
                "👉 Developing and maintaining web applications using React.js and other related technologies.",
            points2:
                "👉 Collaborating with cross-functional teams including designers, product managers, and other developers to create high-quality products.",
            points3:
                "👉 Implementing responsive design and ensuring cross-browser compatibility.",
          ),
        ],
      ),
    );
  }
}

class WorkExperienceWidget extends StatefulWidget {
  const WorkExperienceWidget(
      {super.key,
      required this.w,
      required this.h,
      required this.isMobile,
      required this.isLeft,
      required this.positionTitle,
      required this.companyName,
      required this.companyImg,
      required this.dateRange,
      required this.points1,
      required this.points2,
      required this.points3});

  final bool isMobile;
  final double w;
  final double h;
  final bool isLeft;
  final String positionTitle;
  final String companyName;
  final String companyImg;
  final String dateRange;
  final String points1;
  final String points2;
  final String points3;

  @override
  State<WorkExperienceWidget> createState() => _WorkExperienceWidgetState();
}

class _WorkExperienceWidgetState extends State<WorkExperienceWidget> {

  double textHeight = 0;


  @override
  Widget build(BuildContext context) {
    if(widget.isMobile){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 16),
                      color: Colors.white,
                      height: textHeight,
                      width: 4,
                    ),
                  ),
                  Center(
                    child: Container(
                      width: widget.isMobile ? 35 : widget.w / 24,
                      height: widget.isMobile ? 35 : widget.w / 24,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4),
                          borderRadius:
                          BorderRadius.circular(widget.isMobile ? 35 : widget.w / 24),
                          color: Colors.white),
                      child: Image.asset(widget.companyImg, fit: BoxFit.contain),
                    ),
                  ),
                ],
              ),
              MeasureSize(
                onChange: (value){
                  setState(() {
                    textHeight = value.height;
                  });
                },
                child: Container(
                  width: widget.isMobile ? widget.w/1.4 : widget.w / 3,
                  margin: EdgeInsets.only(bottom: 16),
                  child: Card(
                    color: Colors.grey.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: EdgeInsets.all(widget.isMobile ? 12.0 : 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.positionTitle,
                            style: widget.isMobile ? Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16) : Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            widget.companyName,
                            style: widget.isMobile ? Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 12) : Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(widget.points1, style: widget.isMobile ? Theme.of(context).textTheme.labelSmall : Theme.of(context).textTheme.bodyLarge,),
                          SizedBox(
                            height: 12,
                          ),
                          Text(widget.points2, style: widget.isMobile ? Theme.of(context).textTheme.labelSmall : Theme.of(context).textTheme.bodyLarge,),
                          SizedBox(
                            height: 12,
                          ),
                          Text(widget.points3, style: widget.isMobile ? Theme.of(context).textTheme.labelSmall : Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      );
    }else{
      return Column(
        children: [
          Stack(
            children: [
              Center(
                child: MeasureSize(
                  onChange: (value){
                    setState(() {
                      textHeight = value.height;
                    });
                  },
                  child: Container(
                    width: widget.isMobile ? widget.w/2 : widget.w / 3,
                    margin: widget.isLeft
                        ? EdgeInsets.only(top: 24, right: widget.isMobile ? widget.w/2 : widget.w / 2.5 )
                        : EdgeInsets.only(top: 24, left: widget.isMobile ? widget.w/2 : widget.w / 2.5),

                    child: Card(
                      color: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: EdgeInsets.all(widget.isMobile ? 12.0 : 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.positionTitle,
                              style: widget.isMobile ? Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16) : Theme.of(context).textTheme.headlineMedium,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              widget.companyName,
                              style: widget.isMobile ? Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 12) : Theme.of(context).textTheme.headlineMedium,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(widget.points1, style: widget.isMobile ? Theme.of(context).textTheme.labelSmall : Theme.of(context).textTheme.bodyLarge,),
                            SizedBox(
                              height: 12,
                            ),
                            Text(widget.points2, style: widget.isMobile ? Theme.of(context).textTheme.labelSmall : Theme.of(context).textTheme.bodyLarge,),
                            SizedBox(
                              height: 12,
                            ),
                            Text(widget.points3, style: widget.isMobile ? Theme.of(context).textTheme.labelSmall : Theme.of(context).textTheme.bodyLarge,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  height: textHeight,
                  width: 4,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: Container(
                    width: widget.isMobile ? 35 : widget.w / 24,
                    height: widget.isMobile ? 35 : widget.w / 24,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 4),
                        borderRadius:
                        BorderRadius.circular(widget.isMobile ? 35 : widget.w / 24),
                        color: Colors.white),
                    child: Image.asset(widget.companyImg, fit: BoxFit.contain),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: widget.isLeft
                      ? EdgeInsets.only(top: 32, left: widget.isMobile ? widget.w/3 : widget.w / 4)
                      : EdgeInsets.only(top: 32, right: widget.isMobile ? widget.w/3 : widget.w / 4),
                  child: Text(
                    widget.dateRange,
                    style: TextStyle(
                        fontSize: widget.isMobile ? 12 : widget.w / 72,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ],
      );
    }

  }
}
