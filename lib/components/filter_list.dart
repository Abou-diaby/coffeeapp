import 'package:coffeeapp/components/filter_option.dart';
import 'package:flutter/material.dart';

class FilterList extends StatefulWidget {
  final List<Map<String, String>> filters;

  const FilterList({super.key, required this.filters});

  @override
  State<StatefulWidget> createState() => _FilterList();
}

class _FilterList extends State<FilterList> {
  late List<bool> _selectedFilters;

  @override
  void initState() {
    super.initState();
    _selectedFilters = List<bool>.filled(widget.filters.length, false);
  }

  void _toggleFilter(int idx) {
    setState(() {
      _selectedFilters[idx] = !_selectedFilters[idx];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: widget.filters.length,
        itemBuilder: (context, idx) {
          var isSelected = _selectedFilters[idx];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FilterOption(
              name: widget.filters[idx]["name"] ,
              icon: widget.filters[idx]["icon"] ,
              isSelected: isSelected,
              idx: idx,
              toggleFilter: _toggleFilter,
            ),
          );
        },
      ),
    );
  }
}
