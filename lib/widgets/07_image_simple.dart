import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text('Image From Network'),
          Card(
            elevation: 50,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  'https://shorturl.at/kFILC',
                  loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? child
                        : const CircularProgressIndicator();
                  },
                  errorBuilder: (context, _, progress) {
                    return const Icon(Icons.error,size: 128,);
                  },
                )),
          ),
          const Text('Image from device'),
          Card(
            shape: const RoundedRectangleBorder(
                // Edited default card raduis conner
                borderRadius: BorderRadius.all(Radius.circular(50))),
            elevation: 100,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.asset('assets/images/lotus.jpg')),
          )
        ],
      ),
    );
  }
}
