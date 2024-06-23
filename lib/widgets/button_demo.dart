import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    void showSnackBar() {
      ScaffoldMessenger.of(context)
          .showSnackBar(
          const SnackBar(
              content: Text('Button Click'),
              duration: Duration(milliseconds: 1000),

          ));
    }

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 8,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)))),
                onPressed: showSnackBar,
                child: const Text('ElevatedButton')),
            const ElevatedButton(
                onPressed: null, child: Text('ElevatedButton')),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.blueAccent,
                  elevation: 10,
                  minimumSize: const Size(150, 70),
                  side: const BorderSide(color: Colors.orangeAccent, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: showSnackBar,
                child: const Text('OutLineButton')),
            const OutlinedButton(onPressed: null, child: Text('OutLineButton')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            const TextButton(onPressed: null, child: Text('TextButton')),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: showSnackBar,
              child: Container(
                  width: 150,
                  height: 60,
                  alignment: Alignment.center,
                  color: Colors.orangeAccent,
                  child: const Text('Custom Button')),
            ),

            IconButton(onPressed: showSnackBar,
                icon: const Icon(Icons.add))
          ],
        )
      ],
    );
  }
}
