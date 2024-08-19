import 'package:flutter/material.dart';

class SwipeToDismissDemo extends StatefulWidget {
  const SwipeToDismissDemo({super.key});

  @override
  State<SwipeToDismissDemo> createState() => _SwipeToDismissDemoState();
}

class _SwipeToDismissDemoState extends State<SwipeToDismissDemo> {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: ValueKey(index),
          onDismissed: (direction) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(direction == DismissDirection.startToEnd
                    ? 'Deleted'
                    : 'Liked')));
          },
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerLeft,
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          secondaryBackground: Container(
            color: Colors.green,
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.thumb_up,
              color: Colors.white,
            ),
          ),
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },
    );
  }
}
