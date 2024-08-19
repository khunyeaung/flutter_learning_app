import 'package:flutter/material.dart';

class ReorderableListviewDemo extends StatefulWidget {
  const ReorderableListviewDemo({super.key});

  @override
  State<ReorderableListviewDemo> createState() =>
      _ReorderableListviewDemoState();
}

class _ReorderableListviewDemoState extends State<ReorderableListviewDemo> {
  List<String> nameLists = [
    'John Smith',
    'Emily Johnson',
    'Michael Brown',
    'Jessica Davis',
    'David Wilson',
    'Sarah Miller',
    'James Taylor',
  ];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        setState(() {
          // Adjust the newIndex if it is greater than the old Index
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          //Perform the reordering
          final item = nameLists.removeAt(oldIndex);
          nameLists.insert(newIndex, item);
        });
      },
      children: nameLists.map((String name) {
        return Card(
          key: ValueKey(name),
          child: ListTile(
            title: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.black54),
            ),
          ),
        );
      }).toList(),
    );
  }
}
