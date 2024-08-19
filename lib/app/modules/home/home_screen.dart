import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_ui_kit_property/app/global_widgets/home_page_template.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
   HomeScreen({super.key});
    PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: pageController,
          // Since all pages follow same pattern, let's make a template for them
          children: [
            HomePageTemplate(
              activePage: currentPage,
              title: "Let's Find Peace with Comfort",
              imagePath: "/images/page1.png",
            ),
            HomePageTemplate(
              activePage: currentPage,
              title: "Let's Find Peace with Comfort",
              imagePath: "/images/page2.png",
            ),
            HomePageTemplate(
              activePage: currentPage,
              title: "Let's Find Peace with Comfort",
              imagePath: "/images/page1.png",
            ),
          ],
        ),
      ),
    );
  }
}
