import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/models/testimonial_item.dart';
import 'package:portfolio_website/pages/controllers/testimonial_controller.dart';
import 'package:portfolio_website/utils/app_images.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container6 extends StatelessWidget {
  const Container6({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final controller = Get.put(TestimonialController());
    List<TestimonialItem> testimonialList = [
      TestimonialItem(
          name: "Abhijit Sagar",
          position: "CTO@Chatwise",
          message:
              " Priyanshu performed tasks with dedication and sincerity.",
          profilePic: AppImages.myProfilePic),
      TestimonialItem(
          name: "Lewis Ani",
          position: "Director@Mih Academy",
          message:
              "A great performer in my point of view, completes every task on time.",
          profilePic: AppImages.myProfilePic),
      TestimonialItem(
          name: "Sidhant",
          position: "CEO@TheSocialHunch",
          message: "A high quality developer.",
          profilePic: AppImages.myProfilePic),
      TestimonialItem(
          name: "techfds",
          position: "Fiverr",
          message: "Very good and very helpful developer.",
          profilePic: AppImages.myProfilePic),
      TestimonialItem(
          name: "arsalanyasir69",
          position: "Fiverr",
          message:
              "The application i got is the best application i have ever gotten from someone.",
          profilePic: AppImages.myProfilePic),
      TestimonialItem(
          name: "superlight470",
          position: "Fiverr",
          message:
              "I am very happy with him. Nice work. Excellent design. Very satisfied with work done by him.",
          profilePic: AppImages.myProfilePic),
      TestimonialItem(
          name: "hect",
          position: "Fiverr",
          message: "excellence work response quickly anytime",
          profilePic: AppImages.myProfilePic),
      TestimonialItem(
          name: "khenikumar",
          position: "Fiverr",
          message: "EXCELLENT JOB ALWAYS KNOWN TO HELP RESOLVE YOUR DOUBTS",
          profilePic: AppImages.myProfilePic)
    ];
    return ScreenTypeLayout(
      mobile: MobileContainer6(context, w, testimonialList, controller),
      desktop: DesktopContainer6(context, w, testimonialList, controller),
    );
  }

  Widget MobileContainer6(BuildContext context, double w,
      List<TestimonialItem> testimonialList, TestimonialController controller) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: EdgeInsets.all(24),
          color: Colors.grey.shade900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "What others say",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.grey.shade400, fontSize: 18),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Testimonials.",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 24,
              ),
              CarouselSlider(
                  items: testimonialList
                      .map((item) => TestimonialContainer(
                            testimonialItem: item,
                            w: w,
                            isMobile: true,
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 240,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: Duration(seconds: 2),
                    onPageChanged: (index, _) =>
                        controller.updatePageIndicator(index),
                  )),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Obx(
                  () => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < testimonialList.length; i++)
                        Container(
                          width: 20,
                          height: 4,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: controller.carousalCurrentIndex.value == i
                                ? Colors.blueAccent
                                : Colors.grey,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget DesktopContainer6(BuildContext context, double w,
      List<TestimonialItem> testimonialList, TestimonialController controller) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w / 12, vertical: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: EdgeInsets.all(24),
          color: Colors.grey.shade900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What others say",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.grey.shade400, fontSize: w / 72),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Testimonials.",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: w / 32),
              ),
              SizedBox(
                height: 24,
              ),
              CarouselSlider(
                  items: testimonialList
                      .map((item) => TestimonialContainer(
                          testimonialItem: item, w: w, isMobile: false))
                      .toList(),
                  options: CarouselOptions(
                    height: 220,
                    autoPlay: true,
                    viewportFraction: 0.34,
                    autoPlayInterval: Duration(seconds: 2),
                    onPageChanged: (index, _) =>
                        controller.updatePageIndicator(index),
                  )),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Obx(
                  () => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < testimonialList.length; i++)
                        Container(
                          width: 20,
                          height: 4,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: controller.carousalCurrentIndex.value == i
                                ? Colors.blueAccent
                                : Colors.grey,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TestimonialContainer extends StatelessWidget {
  const TestimonialContainer(
      {super.key,
      required this.testimonialItem,
      required this.w,
      required this.isMobile});

  final TestimonialItem testimonialItem;
  final double w;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(isMobile ? 4 : 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: isMobile ? 320 : w / 4,
          color: Colors.grey.shade800,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  testimonialItem.message,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: isMobile ? 14 : w / 92),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "@${testimonialItem.name}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                  fontSize: isMobile ? 14 : w / 100),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          testimonialItem.position,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: isMobile ? 12 : w / 112),
                        ),
                      ],
                    ),
                    Container(
                        width: isMobile ? 42 : w / 32,
                        height: isMobile ? 42 : w / 32,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(42)),
                        child: Center(
                            child: Text(
                          testimonialItem.name.substring(0, 1),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
