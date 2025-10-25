import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prasad/app/customer/customer_history/views/customer_history_view.dart';
import 'package:prasad/app/customer/customer_home/views/customer_home_view.dart';
import 'package:prasad/app/customer/customer_orders/views/customer_orders_view.dart';
import 'package:prasad/app/customer/customer_profile/views/customer_profile_view.dart';
import 'package:prasad/app/customer/customer_support/views/customer_support_view.dart';

class CustomerBottomNaviBarController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  List<Widget> screens = [
    CustomerHomeView(),
    CustomerOrdersView(),
    CustomerHistoryView(),
    CustomerSupportView(),
    CustomerProfileView(),
  ];

  int get selectedIndex => _selectedIndex.value;

  void changeIndex(int index) {
    _selectedIndex.value = index;
  }
}
