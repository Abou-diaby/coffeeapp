import 'package:flutter/material.dart';

class FilterOption extends StatelessWidget {
  final String? name;
  final String? icon;
  final bool isSelected;
  final Function(int) toggleFilter;
  final int idx;

  const FilterOption({
    super.key,
    required this.name,
    required this.icon,
    required this.isSelected,
    required this.toggleFilter,
    required this.idx,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => toggleFilter(idx),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected == true ? Color(0xff55433C) : Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(90),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset("assets/icons/$icon", width: 20,),
              // Icon(Ima, size: 16),
              const SizedBox(width: 5),
              Text(
                name ?? "mangee",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
