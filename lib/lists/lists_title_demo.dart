import 'package:flutter/material.dart';

class ListTitleDemo extends StatelessWidget {
  const ListTitleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('asset/images/lotus.jpg'),
          ),
          title: Text('Kyaw Kyaw'),
          subtitle: Text('ဘာလုပ်နေတာလဲ ?'),
          trailing: Badge(
            label: Text('5'),
          ),
        ),
        Divider(),
      ],
    );
  }
}
