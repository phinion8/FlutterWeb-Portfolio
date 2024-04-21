import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio_website/models/work_experience_item.dart';
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
    final List<WorkExperienceItem> workExperienceList = [
      WorkExperienceItem(
          positionTitle: "Android App Developer",
          companyName:
              "Mih Academy Of Computer Education & Domestic Science, Cameroon",
          companyImg: AppImages.academy,
          dateRange: "October - December 2022",
          pointList: [
            "👉 Developed an android application GCE+ E-Learning App for the Mih Academy Organization.",
            "👉 Implement Firebase FCM , Firebase Cloud Firestore and Firebase Authentication in the app.",
            "👉 Collaborated with designer and made a user friendly user interface."
          ]),
      WorkExperienceItem(
          positionTitle: "Android App Developer",
          companyName: "Chatwise UK Limited",
          companyImg: AppImages.chatwise,
          dateRange: "JUNE 2023 - PRESENT",
          pointList: [
            "👉 Developed new features and enhancements for Chatwise app",
            "👉 Collaborated with design and product teams to create user-friendly interfaces for the app.",
            "👉 Collaborated with qa team to fix bugs in the app.",
            "👉 Fixed crashes in the app that were reported on the Firebase Crashlatics resulting into a crash free experience of the app."
          ])
    ];
    return ScreenTypeLayout(
      mobile: DesktopContainer2(w, h, true, workExperienceList),
      desktop: DesktopContainer2(w, h, false, workExperienceList),
    );
  }

  Widget MobileContainer2(double w, double h, List<WorkExperienceItem> workExperienceList) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 42),
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
            isLeft: false,
            workExperienceItem: workExperienceList[0],
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: true,
            isLeft: true,
            workExperienceItem: workExperienceList[1],
          ),
        ],
      ),
    );
  }

  Widget DesktopContainer2(double w, double h, bool isMobile, List<WorkExperienceItem> workExperienceList) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 12, vertical: 42),
      child: Column(
        children: [
          Text(
            "What i have done so far",
            style: TextStyle(
                fontSize: isMobile ? 16 : w / 48, color: Colors.grey.shade600),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Work Experience!",
            style: TextStyle(
                fontSize: isMobile ? 24 : w / 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: isMobile,
            isLeft: true,
            workExperienceItem: workExperienceList[0],
          ),
          WorkExperienceWidget(
            w: w,
            h: h,
            isMobile: isMobile,
            isLeft: false,
            workExperienceItem: workExperienceList[1],
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
      required this.workExperienceItem});

  final bool isMobile;
  final double w;
  final double h;
  final bool isLeft;
  final WorkExperienceItem workExperienceItem;

  @override
  State<WorkExperienceWidget> createState() => _WorkExperienceWidgetState();
}

class _WorkExperienceWidgetState extends State<WorkExperienceWidget> {
  double textHeight = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.isMobile) {
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
                          borderRadius: BorderRadius.circular(
                              widget.isMobile ? 35 : widget.w / 24),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Image.asset(widget.workExperienceItem.companyImg,
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ],
              ),
              MeasureSize(
                onChange: (value) {
                  setState(() {
                    textHeight = value.height;
                  });
                },
                child: Container(
                  width: widget.isMobile ? widget.w / 1.38 : widget.w / 3,
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
                            widget.workExperienceItem.positionTitle,
                            style: widget.isMobile
                                ? Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontSize: 18)
                                : Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            widget.workExperienceItem.companyName,
                            style: widget.isMobile
                                ? Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontSize: 16)
                                : Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            widget.workExperienceItem.pointList[0],
                            style: widget.isMobile
                                ? Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey.shade400, fontSize: 14)
                                : Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            widget.workExperienceItem.pointList[1],
                            style: widget.isMobile
                                ? Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey.shade400, fontSize: 14)
                                : Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            widget.workExperienceItem.pointList[2],
                            style: widget.isMobile
                                ? Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey.shade400, fontSize: 14)
                                : Theme.of(context).textTheme.bodyLarge,
                          ),
                          (widget.workExperienceItem.pointList.length == 4)
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text(
                                    widget.workExperienceItem.pointList[3],
                                    style: widget.isMobile
                                        ? Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.grey.shade400, fontSize: 14)
                                        : Theme.of(context).textTheme.bodyLarge,
                                  ),
                                )
                              : SizedBox()
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
    } else {
      return Column(
        children: [
          Stack(
            children: [
              Center(
                child: MeasureSize(
                  onChange: (value) {
                    setState(() {
                      textHeight = value.height;
                    });
                  },
                  child: Container(
                    width: widget.isMobile ? widget.w / 2 : widget.w / 3,
                    margin: widget.isLeft
                        ? EdgeInsets.only(
                            top: 24,
                            right:
                                widget.isMobile ? widget.w / 2 : widget.w / 2.5)
                        : EdgeInsets.only(
                            top: 24,
                            left: widget.isMobile
                                ? widget.w / 2
                                : widget.w / 2.5),
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
                              widget.workExperienceItem.positionTitle,
                              style: widget.isMobile
                                  ? Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontSize: 16)
                                  : Theme.of(context).textTheme.headlineMedium,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              widget.workExperienceItem.companyName,
                              style: widget.isMobile
                                  ? Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontSize: 12)
                                  : Theme.of(context).textTheme.headlineMedium,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                             widget.workExperienceItem.pointList[0],
                              style: widget.isMobile
                                  ? Theme.of(context).textTheme.labelSmall
                                  : Theme.of(context).textTheme.bodyLarge,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              widget.workExperienceItem.pointList[1],
                              style: widget.isMobile
                                  ? Theme.of(context).textTheme.labelSmall
                                  : Theme.of(context).textTheme.bodyLarge,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              widget.workExperienceItem.pointList[2],
                              style: widget.isMobile
                                  ? Theme.of(context).textTheme.labelSmall
                                  : Theme.of(context).textTheme.bodyLarge,
                            ),
                            (widget.workExperienceItem.pointList.length == 4)
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Text(
                                      widget.workExperienceItem.pointList[3],
                                      style: widget.isMobile
                                          ? Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                          : Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                    ),
                                  )
                                : SizedBox(),
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
                        borderRadius: BorderRadius.circular(
                            widget.isMobile ? 35 : widget.w / 24),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(widget.workExperienceItem.companyImg, fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: widget.isLeft
                      ? EdgeInsets.only(
                          top: 32,
                          left: widget.isMobile ? widget.w / 3 : widget.w / 4)
                      : EdgeInsets.only(
                          top: 32,
                          right: widget.isMobile ? widget.w / 3 : widget.w / 4),
                  child: Text(
                    widget.workExperienceItem.dateRange,
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
