import 'package:flutter/material.dart';
import 'package:flutter_learning_app/widgets/09_card_simple.dart';
import 'preview_screen.dart';
import 'widgets/01_icon_simple.dart';
import 'widgets/02_text_simple.dart';
import 'widgets/03_typography_simple.dart';
import 'widgets/04_button_simple.dart';
import 'widgets/05_text_field_simple.dart';
import 'widgets/06_textformfield_simple.dart';
import 'widgets/07_image_simple.dart';
import 'widgets/08_key_simple.dart';

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
      buildSubtitle('Icon', const IconDemo(),'widgets/01_icon_simple.dart'),
      buildSubtitle('Text', const TextDemo(),'widgets/02_text_simple.dart'),
      buildSubtitle('Typography', const TypographyDemo(),'widgets/03_typography_simple.dart'),
      buildSubtitle('Button', const ButtonDemo(), 'widgets/04_button_simple.dart'),
      buildSubtitle('TextField', const TextFieldDemo(), 'widgets/05_text_field_simple.dart'),
      buildSubtitle('TextFormField', const TextFormFieldDemo(), 'widgets/06_textformfield_simple.dart'),
      buildSubtitle('Image Network', const ImageDemo(), 'widgets/07_image_simple.dart'),
      buildSubtitle('FlutterKeys', KeySimple(), 'widgets/08_key_simple.dart'),
      buildSubtitle('Flutter Cards', CardSimple(),'widgets/09_card_simple.dart'),
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
