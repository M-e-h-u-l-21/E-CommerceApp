import "package:e_commerce/features/authentication/screens/login/login.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currentPageIndex =
      0.obs; // obs stands for observer which is another widget which changes
  // Rx is GetX defined method which is used for defining variables which will change frequently also depending on the UI

  // Update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  // Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int current = currentPageIndex.value + 1;
      pageController.jumpToPage(current);
    }
  }

  //Update current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
