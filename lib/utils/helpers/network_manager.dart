// import 'dart:async';
// import 'package:get/get.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/services.dart';

// // import '../popups/loaders.dart';

// /// Manages the network connectivity status and provides methods to check and handle connectivity changes.
// class NetworkManager extends GetxController {
//   static NetworkManager get instance => Get.find();

//   final Connectivity _connectivity = Connectivity();
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//   final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

//   /// Initialize the network manager and set up a stream to continually check the connection status.
//   @override
//   void onInit() {
//     super.onInit();
//     _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
//   }

// // class TPricingCalculator {

// //   /// -- Calculate Price based on tax and shipping
// //   static double calculateTotalPrice(double productPrice, String location) {
// //   double taxRate = getTaxRateForLocation(location);
// //   double taxAmount = productPrice * taxRate;

// //   double shippingCost = getShippingCost(location);

// //   double totalPrice = productPrice + taxAmount + shippingCost;
// //   return totalPrice;
// //   }

// //   /// -- Calculate shipping caost
// //   static String calculateShippingCost(double productPrice, String location) {
// //   double shippingCost = getShippingCost(location);
// //   return shippingCost.toStringAsFixed(2);
// //   }
// //   /// -- Calculate tax
// //   static String calculateTax(double productPrice, String location) {
// //     double taxRate = getTaxRateForLocation(location);
// //     double taxAmount = productPrice * taxRate;
// //   return taxAmount.toStringAsFixed(2);
// //   }

// //   static double getTaxRateForLocation(String location) {
// //   // Lookup the tax rate for the given location from a tax rate database or API.
// //   // Return the appropriate tax rate.
// //   return 0.10; // Example tax rate of 10%
// //   }

// //   static double getShippingCost(String location) {
// //   // Lookup the shipping cost for the given location using a shipping rate API.
// //   // Calculate the shipping cost based on various factors like distance, weight, etc.
// //   return 5.00; // Example shipping cost of $5
// //   }

// //   /// -- Sum all cart values and return total amount
// //   static double calculateCartTotal(CartModel cart) {
// //     return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
// //   }
// // }


//   /// Update the connection status based on changes in connectivity and show a relevant popup for no internet connection.
//   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
//     _connectionStatus.value = result;
//     if (_connectionStatus.value == ConnectivityResult.none) {
//       TLoaders.warningSnackBar(title: 'No Internet Connection');
//     }
//   }

//   /// Check the internet connection status.
//   /// Returns `true` if connected, `false` otherwise.
//   Future<bool> isConnected() async {
//     try {
//       final result = await _connectivity.checkConnectivity();
//       if (result == ConnectivityResult.none) {
//         return false;
//       } else {
//         return true;
//       }
//     } on PlatformException catch (_) {
//       return false;
//     }
//   }

//   /// Dispose or close the active connectivity stream.
//   @override
//   void onClose() {
//     super.onClose();
//     _connectivitySubscription.cancel();
//   }
// }
