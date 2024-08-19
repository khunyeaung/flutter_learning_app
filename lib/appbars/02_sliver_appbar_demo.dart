import 'package:flutter/material.dart';

class SliverAppbarDemo extends StatelessWidget {
  const SliverAppbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red[900],
            foregroundColor: Colors.white,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.people))
            ],
            pinned: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Sliver Appbar',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              background: Image.asset(
                'assets/images/lotus.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SliverFillRemaining(
            child: Center(
              child: Text('Body part ....'),
            ),
          )
        ],
      ),
    );
  }
}
