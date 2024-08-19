import 'package:flutter/material.dart';

class BottomAppbarDemo extends StatelessWidget {
  const BottomAppbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    void displayBottomSheet() {
      showModalBottomSheet(
          context: context,
          builder: (context) => Container(
                height: 200,
                alignment: Alignment.center,
                child: const Text('Bottom Sheet'),
              ));
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.red[900],
        onPressed: displayBottomSheet,
        mini: false,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.red[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: displayBottomSheet,
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
