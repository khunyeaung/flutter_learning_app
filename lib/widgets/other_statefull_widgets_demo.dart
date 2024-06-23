import 'package:flutter/material.dart';

class OtherStateFullWdigetsDemo extends StatefulWidget {
  const OtherStateFullWdigetsDemo({super.key});

  @override
  State<OtherStateFullWdigetsDemo> createState() =>
      _OtherStateFullWdigetsDemoState();
}

class _OtherStateFullWdigetsDemoState extends State<OtherStateFullWdigetsDemo> {
  bool on = false;
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ListTile(
            title: const Text('Switch'),
            trailing: Switch(
                activeColor: Colors.deepOrangeAccent,
                value: on,
                onChanged: (bool value) {
                  setState(() {
                    on = value;
                  });
                }),
          ),
          ListTile(
            title: const Text('Check Box'),
            trailing: Transform.scale(
              scale: 1.5,
              child: Checkbox(
                value: checked,
                onChanged: (bool? value) {
                  setState(() {
                    checked = value!;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
