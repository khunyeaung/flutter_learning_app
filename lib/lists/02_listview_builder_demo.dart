import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as bd;

class User {
  String name;
  String message;
  int unseenCount;
  String time;
  String image;

  User(
      {required this.name,
      required this.message,
      required this.unseenCount,
      required this.time,
      required this.image});
}

List<User> userLists = [
  User(
      name: "Aung Aung",
      message: 'ဘာလုပ်နေလဲ',
      unseenCount: 5,
      time: '10 : 00',
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
  User(
      name: "Kyaw Aung",
      message: 'နေကောင်းလား',
      unseenCount: 5,
      time: '5 : 00',
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
  User(
      name: "Aung Hla",
      message: 'စားပြီးပြီလား',
      unseenCount: 5,
      time: '3 : 45',
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
  User(
      name: "Kyaw Kyaw",
      message: 'ဘယ်သွားမလဲ ?',
      unseenCount: 5,
      time: '5 : 48',
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
  User(
      name: "Htun Htun",
      message: 'I am Ok',
      unseenCount: 5,
      time: '3 : 22',
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
];

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({super.key});

  Widget buildUserChat(User user) {
    return Column(
      children: [
        ListTile(
          leading: bd.Badge(
              badgeStyle: const bd.BadgeStyle(badgeColor: Colors.blue),
              badgeContent: Text(
                '${user.unseenCount}',
                style: const TextStyle(color: Colors.white),
              ),
              child: CircleAvatar(backgroundImage: NetworkImage(user.image))),
          title: Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(user.message),
          trailing: Text(user.time),
        ),
        // ),
        const Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userLists.length,
        itemBuilder: (context, index) {
          return buildUserChat(userLists[index]);
        });

    // buildUserChat(userLists.last);
  }
}
