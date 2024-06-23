import 'package:flutter/material.dart';
import 'package:flutter_learning_app/widgets/button_demo.dart';
import 'package:flutter_learning_app/widgets/icon_demo.dart';
import 'package:flutter_learning_app/preview_screen.dart';
import 'package:flutter_learning_app/widgets/image_demo.dart';
import 'package:flutter_learning_app/widgets/textfield_demo.dart';
import 'package:flutter_learning_app/widgets/text_demo.dart';
import 'package:flutter_learning_app/widgets/textformfield_demo.dart';
import 'package:flutter_learning_app/widgets/typography_demo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  void gotoNextScreen(String title,Widget screen){
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreviewScreen(title: title, demo: screen)));
    //  }
    Widget buildTitle(String title, List<Widget> subtitle) {
      return Card(
        elevation: 10,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: ExpansionTile(title: Text(title), children: subtitle),
      );
    }

    Widget buildSubtitle(String subTitle, Widget demo,String path) {
      return ListTile(
        title: Text(subTitle),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  PreviewScreen(title: subTitle, demo: demo,path: path)));
        },
        trailing: const Icon(Icons.chevron_right),
      );
    }

    final List<Widget> widgets = [
      // const ListTile(title: Text('Lists 1')),
      // const ListTile(title: Text('Lists 2')),
      // const ListTile(title: Text('Lists 3')),
      buildSubtitle('Icon', const IconDemo(),'widgets/icon_demo.dart'),
      buildSubtitle('Text', const TextDemo(),'widgets/text_demo.dart'),
      buildSubtitle('Typography', const TypographyDemo(),'widgets/typography_demo.dart'),
      buildSubtitle('Button', const ButtonDemo(), 'widgets/button_demo.dart'),
      buildSubtitle('TextField', const TextFieldDemo(), 'widgets/textfield_demo.dart'),
      buildSubtitle('TextFormField', const TextFormFieldDemo(), 'widgets/textformfield_demo.dart'),
      buildSubtitle('Image Network', const ImageDemo(), 'widgets/image_demo.dart')
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Flutter Catalog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildTitle('Widgets', widgets)
            // ListTile(
            //   leading: Icon(Icons.settings),
            //   title: Text('Settings'),
            //   subtitle: Text('Adjust some system settings'),
            //   trailing: Icon(Icons.chevron_right),
            // )
          ],
        ),
      ),
    );
  }
}
