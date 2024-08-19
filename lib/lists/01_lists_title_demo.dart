import 'package:flutter/material.dart';

class ListTitleDemo extends StatelessWidget {
  const ListTitleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/lotus.jpg'),
          ),
          title: Text(
            'Kyaw Kyaw',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('ဘာလုပ်နေတာလဲ ?'),
          trailing: Badge(
            label: Text('5'),
          ),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/lotus.jpg'),
          ),
          title: Text(
            'Aung Aung',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('နေကောင်းလား ?'),
          trailing: Badge(
            label: Text('5'),
          ),
        ),
        Divider()
      ],
    );
  }
}
