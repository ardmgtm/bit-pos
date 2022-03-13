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

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (ctx, _) => const SizedBox(width: 8),
      itemBuilder: (context, index) {
        return ChoiceChip(
          pressElevation: 0,
          selectedColor: Theme.of(context).colorScheme.primary,
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.5),
          labelStyle: const TextStyle(color: Colors.white),
          label:
              Text('${categories[index].toCapitalized()} (${counts[index]})'),
          selected: _selectedIndex == index,
          onSelected: (newVal) {
            setState(() {
              _selectedIndex = index;
            });
            if (widget.onCategorySelected != null) {
              widget.onCategorySelected!(categories[index]);
            }
          },
        );
      },
    );
  }
}
