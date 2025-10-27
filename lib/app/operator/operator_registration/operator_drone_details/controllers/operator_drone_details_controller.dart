import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OperatorDroneDetailsController extends GetxController {
  // Each drone form stored as a map of controllers
  final drones = <Map<String, TextEditingController>>[].obs;

  final assetTypes = ['Quadcopter', 'Fixed Wing', 'VTOL'];
  final insuranceStatus = ['Insured', 'Not Insured'];
  final rentStatus = ['Rented', 'Owned'];
  final operationalStatus = ['Active', 'Inactive', 'Maintenance'];
  final droneCondition = ['Excellent', 'Good', 'Fair', 'Poor'];

  // Selected values
  final selectedAssetType = RxnString();
  final selectedInsuranceStatus = RxnString();
  final selectedRentStatus = RxnString();
  final selectedOperationalStatus = RxnString();
  final selectedDroneCondition = RxnString();

  // Dropdown handlers
  void onAssetTypeChanged(String? value) => selectedAssetType.value = value;
  void onInsuranceChanged(String? value) => selectedInsuranceStatus.value = value;
  void onRentChanged(String? value) => selectedRentStatus.value = value;
  void onOperationalChanged(String? value) => selectedOperationalStatus.value = value;
  void onDroneConditionChanged(String? value) => selectedDroneCondition.value = value;

  @override
  void onInit() {
    super.onInit();
    addNewDrone();
  }

  // Add new drone form
  void addNewDrone() {
    drones.add({
      'uin': TextEditingController(),
      'serviceCapabilities': TextEditingController(),
      'model': TextEditingController(),
      'make': TextEditingController(),
      'manufactureYear': TextEditingController(),
      'serialNumber': TextEditingController(),
      'manufacturer': TextEditingController(),
      'flightHours': TextEditingController(),
      'lastMaintenanceDate': TextEditingController(),
      'batteryType': TextEditingController(),
      'batteryCycles': TextEditingController(),
      'batteryCapacity': TextEditingController(),
    });
  }

  @override
  void onClose() {
    for (var drone in drones) {
      for (var controller in drone.values) {
        controller.dispose();
      }
    }
    super.onClose();
  }
}
