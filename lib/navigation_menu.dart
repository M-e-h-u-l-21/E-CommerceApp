import 'package:e_commerce/features/shop/screens/Home/Home.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        //Declaring our observer
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: Controller.selectedIndex.value,
            backgroundColor: darkMode ? TColors.black : Colors.white,
            indicatorColor: darkMode
                ? TColors.white.withOpacity(0.1)
                : TColors.black.withOpacity(0.1),
            onDestinationSelected: (value) =>
                Controller.selectedIndex.value = value,
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ]),
      ),
      body: Obx(() => Controller.screens[Controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  // Since we want to change the screen on pressing the bottom bar button , we will need a stateful widget which ultimately
  // leads to redrawing of everything, which is an overload on app . TO avoid that we use getX state management which helps to reduce the redrawing.
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.orange)
  ];
}
