import 'package:flutter/material.dart';

import '../../domain/product/product_filter.dart';
import '../core/string_extension.dart';

class CategoryChip extends StatefulWidget {
  final ProductFilter productFilter;
  final Function(String)? onCategorySelected;

  const CategoryChip({
    Key? key,
    required this.productFilter,
    this.onCategorySelected,
  }) : super(key: key);

  @override
  State<CategoryChip> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<CategoryChip> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var categories = widget.productFilter.categoryMap.keys.toList();
    var counts = widget.productFilter.categoryMap.values.toList();
    var color = Theme.of(context).colorScheme.primary;

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (ctx, _) => const SizedBox(width: 8),
      itemBuilder: (context, index) {
        bool _isSelected = _selectedIndex == index;
        return ChoiceChip(
          pressElevation: 0,
          selectedColor: color,
          backgroundColor: Colors.transparent,
          side: BorderSide(
            width: 2,
            color: color,
          ),
          labelStyle: TextStyle(
            color: _isSelected ? Colors.white : color,
          ),
          label:
              Text('${categories[index].toCapitalized()} (${counts[index]})'),
          selected: _isSelected,
          onSelected: (newVal) {
            setState(() {
              _selectedIndex = index;
            });
            if (widget.onCategorySelected != null && !_isSelected) {
              widget.onCategorySelected!(categories[index]);
            }
          },
        );
      },
    );
  }
}
