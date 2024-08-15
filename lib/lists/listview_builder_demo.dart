import 'package:flutter/material.dart';

class User {
  String name;
  String message;
  int unseenCount;
  String image;

  User(
      {required this.name,
      required this.message,
      required this.unseenCount,
      required this.image});
}

List<User> userLists = [
  User(
      name: "Aung Aung",
      message: 'ဘာလုပ်နေလဲ',
      unseenCount: 5,
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
  User(
      name: "Kyaw Aung",
      message: 'နေကောင်းလား',
      unseenCount: 5,
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
  User(
      name: "Aung Hla",
      message: 'စားပြီးပြီလား',
      unseenCount: 5,
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
  User(
      name: "Kyaw Kyaw",
      message: 'ဘယ်သွားမလဲ ?',
      unseenCount: 5,
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
  User(
      name: "Htun Htun",
      message: 'I am Ok',
      unseenCount: 5,
      image:
          'https://w7.pngwing.com/pngs/314/994/png-transparent-person-confused-miscellaneous-tshirt-cartoon-thumbnail.png'),
];

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({super.key});

  Widget buildUserChat(User user) {
    return ListView(
      children: [
        ListTile(
          
          // leading: bd.Badge(
          //   badgeStyle: Colors.deepOrange,
          // ),
          title: Text(user.name),
          subtitle: Text(user.message),
          trailing: Badge(
            label: Text('${user.unseenCount}'),
          ),
          
          // leading: bd.Badge(
          //   badgeStyle: Colors.deepOrange,
          // ),
          // child: CircleAvatar(
          //   backgroundImage: NetworkImage(user.image),
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
  }
}
