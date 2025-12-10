
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class MultiDropdownButton extends StatefulWidget {
  final String label;
  final List<String> items;
  final List<String> selectedItems;
  final ValueChanged<List<String>> onChanged;

  const MultiDropdownButton({
    super.key,
    required this.label,
    required this.items,
    required this.selectedItems,
    required this.onChanged,
  });

  @override
  State<MultiDropdownButton> createState() => _MultiDropdownButtonState();
}

class _MultiDropdownButtonState extends State<MultiDropdownButton> {
  late List<String> _selectedItems;

  @override
  void initState() {
    super.initState();
    _selectedItems = List.from(widget.selectedItems);
  }

  @override
  void didUpdateWidget(covariant MultiDropdownButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedItems != widget.selectedItems) {
      _selectedItems = List.from(widget.selectedItems);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2<String>(
        // ✅ multi-select এ value সবসময় null থাকবে
        value: null,
        isExpanded: true,

        hint: Text(
          _selectedItems.isEmpty
              ? "Select ${widget.label}"
              : _selectedItems.join(', '),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),

        decoration: InputDecoration(
          labelText: widget.label,
          // ✅ selected থাকলে label floating হবে
          floatingLabelBehavior: _selectedItems.isNotEmpty
              ? FloatingLabelBehavior.always
              : FloatingLabelBehavior.never,
          floatingLabelStyle: AppTextStyles.medium20.copyWith(
            color: AppColors.primaryColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        items: widget.items.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            enabled: false,
            child: StatefulBuilder(
              builder: (context, menuSetState) {
                final isChecked = _selectedItems.contains(item);

                return InkWell(
                  onTap: () {
                    _toggleItem(item);
                    menuSetState(() {});
                  },
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (_) {
                          _toggleItem(item);
                          menuSetState(() {});
                        },
                      ),
                      Expanded(child: Text(item)),
                    ],
                  ),
                );
              },
            ),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }

  void _toggleItem(String item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });

    widget.onChanged(List.from(_selectedItems));
  }
}

