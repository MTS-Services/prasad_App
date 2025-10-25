import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/customer_note_controller.dart';


class MultiSelectNoteDropdown extends StatelessWidget {
  final String hintText;

  const MultiSelectNoteDropdown({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CustomerNoteController>();

    return Obx(() {
      final selected = controller.selectedLocations.join(', ');
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(6),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              selected.isEmpty ? hintText : selected,
              style: const TextStyle(color: Colors.black87),
            ),
            iconStyleData: const IconStyleData(
                icon:Icon(Icons.keyboard_arrow_down)
            ),
            items: controller.locations.map((location) {
              final isSelected = controller.selectedLocations.contains(location);
              return DropdownMenuItem<String>(
                value: location,
                child: Row(
                  children: [
                    Checkbox(
                      value: isSelected,
                      onChanged: (value) {
                        controller.toggleSelection(location);
                      },
                    ),
                    Text(location),
                  ],
                ),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
      );
    });
  }
}
