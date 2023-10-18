import 'package:fan_flutter/domain/constant/app_colors.dart';
import 'package:fan_flutter/domain/constant/app_enum.dart';
import 'package:flutter/material.dart';

class FilterStatusItems extends StatefulWidget {
  final List<FilterStatus> items;
  final FilterStatus? lastFilter;
  final Function(FilterStatus item) callback;

  const FilterStatusItems({super.key, required this.items, required this.callback, this.lastFilter});

  @override
  State<FilterStatusItems> createState() => _FilterStatusItemsState();
}

class _FilterStatusItemsState extends State<FilterStatusItems> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.items.indexOf(widget.lastFilter ?? FilterStatus.all);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) => ListTile(
        title: Text(widget.items[index].name.toUpperCase()),
        trailing: index == _selectedIndex ? Icon(Icons.check_circle, color: AppColors.green) : null,
        selected: index == _selectedIndex,
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          widget.callback(widget.items[_selectedIndex]);
        },
      ),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: widget.items.length,
    );
  }
}
