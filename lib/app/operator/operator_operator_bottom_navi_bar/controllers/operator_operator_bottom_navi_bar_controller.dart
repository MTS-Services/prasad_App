import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prasad/app/operator/operator_history/views/operator_history_view.dart';
import 'package:prasad/app/operator/operator_home/views/operator_home_view.dart';
import 'package:prasad/app/operator/operator_payment/views/operator_payment_view.dart';
import 'package:prasad/app/operator/operator_profile/views/operator_profile_view.dart';
import 'package:prasad/app/operator/operator_service/views/operator_service_view.dart';

class OperatorBottomNaviBarController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  List<Widget> screens = [
    OperatorHomeView(),
    OperatorServiceView(),
    OperatorHistoryView(),
    OperatorPaymentView(),
    OperatorProfileView(),
  ];

  int get selectedIndex => _selectedIndex.value;

  void changeIndex(int index) {
    _selectedIndex.value = index;
  }
}
