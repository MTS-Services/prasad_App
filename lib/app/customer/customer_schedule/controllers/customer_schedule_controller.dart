import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CustomerScheduleController extends GetxController {
  final Rxn<DateTime> selectedDate = Rxn<DateTime>();
  Rx<TimeOfDay?> selectedTime = Rx<TimeOfDay?>(null);

  void setDate(DateTime? date) {
    selectedDate.value = date;
  }

  String get formattedDate {
    if (selectedDate.value == null) return 'Choose date';
    return DateFormat('dd MMM yyyy').format(selectedDate.value!);
  }

  Future<void> pickTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime.value ?? TimeOfDay.now(),
    );

    if (picked != null) {
      selectedTime.value = picked;
    }
  }
  String get formattedTime {
    if (selectedTime.value == null) return '';
    final time = selectedTime.value!;
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return TimeOfDay.fromDateTime(dt).format(Get.context!);
  }

  final locations = ['New York', 'London', 'Paris', 'Tokyo', 'Delhi'];
  var locationsValue = RxnString();

  var selectedLocations = <String>[].obs;
  void locationsItemSelected(String? value) {
    locationsValue.value = value;
  }

  void toggleSelection(String location) {
    if (selectedLocations.contains(location)) {
      selectedLocations.remove(location);
    } else {
      selectedLocations.add(location);
    }
  }
}
