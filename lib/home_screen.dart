import 'package:flutter/material.dart';
import 'preview_screen.dart';
//appbars
import 'appbars/01_bottom_appbar_demo.dart';
import 'appbars/02_sliver_appbar_demo.dart';
//layouts
import 'layouts/01_container_demo.dart';
import 'layouts/02_row_column_demo.dart';
import 'layouts/03_warp_demo.dart';
import 'layouts/04_fractionally_sizebox_demo.dart';
import 'layouts/05_expanded_demo.dart';
import 'layouts/06_stack_demo.dart';
//lists
import 'lists/01_lists_title_demo.dart';
import 'lists/02_listview_builder_demo.dart';
import 'lists/03_gridview_builder_demo.dart';
import 'lists/04_swipe_to_dismiss_demo.dart';
import 'lists/05_slideable_listtile_demo.dart';
import 'lists/06_reorderable_listview_demo.dart';
import 'lists/07_data_table_demo.dart';
//widgets
import 'widgets/01_icon_demo.dart';
import 'widgets/02_text_demo.dart';
import 'widgets/03_typography_demo.dart';
import 'widgets/04_button_demo.dart';
import 'widgets/05_text_field_demo.dart';
import 'widgets/06_textformfield_demo.dart';
import 'widgets/07_image_demo.dart';
import 'widgets/10_key_demo.dart';
import 'widgets/11_card_demo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  void gotoNextScreen(String title,Widget screen){
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreviewScreen(title: title, demo: screen)));
    //  }
    Widget buildTitle(Icon icon, String title, List<Widget> subtitle) {
      return Card(
        elevation: 10,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: ExpansionTile(
            leading: icon, title: Text(title), children: subtitle),
      );
    }

    Widget buildSubtitle(String subTitle, Widget demo, String path) {
      return ListTile(
        title: Text(subTitle),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  PreviewScreen(title: subTitle, demo: demo, path: path)));
        },
        trailing: const Icon(Icons.chevron_right),
      );
    }

    final List<Widget> widgets = [
      // const ListTile(title: Text('Lists 1')),
      // const ListTile(title: Text('Lists 2')),
      // const ListTile(title: Text('Lists 3')),
      buildSubtitle('Icon', const IconDemo(), 'widgets/01_icon_demo.dart'),
      buildSubtitle('Text', const TextDemo(), 'widgets/02_text_demo.dart'),
      buildSubtitle('Typography', const TypographyDemo(),
          'widgets/03_typography_demo.dart'),
      buildSubtitle(
          'Button', const ButtonDemo(), 'widgets/04_button_demo.dart'),
      buildSubtitle('TextField', const TextFieldDemo(),
          'widgets/05_text_field_demo.dart'),
      buildSubtitle('TextFormField', const TextFormFieldDemo(),
          'widgets/06_textformfield_demo.dart'),
      buildSubtitle(
          'Image Network', const ImageDemo(), 'widgets/07_image_demo.dart'),
      buildSubtitle('FlutterKeys', const KeyDemo(), 'widgets/10_key_demo.dart'),
      buildSubtitle(
          'Flutter Cards', const CardDemo(), 'widgets/11_card_demo.dart'),
    ];
    final List<Widget> layouts = [
      buildSubtitle(
          'Container', const ContainerDemo(), 'layouts/01_container_demo.dart'),
      buildSubtitle('Row & Column', const RowColumnDemo(),
          'layouts/o2_row_column_demo.dart'),
      buildSubtitle('Wrap', const WarpDemo(), 'layouts/03_wart_demo.dart'),
      buildSubtitle('FractionallySizedBox', const FractionallySizeboxDemo(),
          'layouts/04_fractionally_sizebox_demo.dart'),
      buildSubtitle(
          'Expanded', const ExpandedDemo(), 'layouts/05_expanded_demo.dart'),
      buildSubtitle('Stack', const StackDemo(), 'layouts/06_stack_demo.dart'),
    ];
    final List<Widget> lists = [
      buildSubtitle('List View Chat', const ListViewBuilderDemo(),
          'lists/listview_builder_demo.dart'),
      buildSubtitle(
          'ListTile', const ListTitleDemo(), 'lists/01_lists_title_demo.dart'),
      buildSubtitle('ListView.builder', const ListViewBuilderDemo(),
          'lists/02_listview_builder_demo.dart'),
      buildSubtitle('GridView', const GridviewBuilderDemo(),
          'lists/gridview_duilder_demo.dart'),
      buildSubtitle('ExpansionTile', const Placeholder(), ''),
      buildSubtitle('Swipe To Dismiss', const SwipeToDismissDemo(),
          'lists/swipe_to_dismiss_demo.dart'),
      buildSubtitle('SlidableListTile', const SlideableListtileDemo(),
          'lists/slideable_listtile_demo.dart'),
      buildSubtitle('ReorderableListView', const ReorderableListviewDemo(),
          'lists/reorderable_listview_demo.dart'),
      buildSubtitle(
          'Data Table', const DataTableDemo(), 'lists/data_table_demo.dart'),
    ];
    final List<Widget> appbars = [
      buildSubtitle('BottomAppBar & FAB', const BottomAppbarDemo(),
          'appbars/bottom_appbar_demo.dart'),
      buildSubtitle('Sliver AppBar', const SliverAppbarDemo(),
          'appbars/sliver_appbar_demo.dart'),
      buildSubtitle('Backdrop', const Placeholder(), ''),
      buildSubtitle('ConvexAppBar', const Placeholder(), ''),
      buildSubtitle('HidableBottomNavBar', const Placeholder(), ''),
      buildSubtitle('SearchBar', const Placeholder(), ''),
    ];
    final List<Widget> navigations = [
      buildSubtitle('Tab', const Placeholder(), ''),
      buildSubtitle('Dialogs', const Placeholder(), ''),
      buildSubtitle('Drawers', const Placeholder(), ''),
      buildSubtitle('BottomSheet', const Placeholder(), ''),
      buildSubtitle('BottomTabBar', const Placeholder(), ''),
      buildSubtitle('BottomNavBar', const Placeholder(), ''),
      buildSubtitle('Page Selector', const Placeholder(), ''),
      buildSubtitle('DraggableScroolableSheet', const Placeholder(), ''),
    ];
    final List<Widget> async = [
      buildSubtitle('FutureBuilder', const Placeholder(), 'path'),
      buildSubtitle('StreamBuilder', const Placeholder(), 'path'),
    ];
    final List<Widget> animations = [
      buildSubtitle('Hero', const Placeholder(), ''),
      buildSubtitle('Opacity', const Placeholder(), ''),
      buildSubtitle('AnimatedContainer', const Placeholder(), ''),
      buildSubtitle('AnimationPackage', const Placeholder(), ''),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Flutter Catalog'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildTitle(const Icon(Icons.widgets), 'Widgets', widgets),
              buildTitle(const Icon(Icons.layers), 'Layouts', layouts),
              buildTitle(const Icon(Icons.list), 'Lists', lists),
              buildTitle(const Icon(Icons.mobile_friendly), 'Appbar', appbars),
              buildTitle(
                  const Icon(Icons.navigation), 'Navigations', navigations),
              buildTitle(const Icon(Icons.question_answer), 'Asyn', async),
              buildTitle(
                  const Icon(Icons.animation), 'AnimationPackage', animations),

              // ListTile(
              //   leading: Icon(Icons.settings),
              //   title: Text('Settings'),
              //   subtitle: Text('Adjust some system settings'),
              //   trailing: Icon(Icons.chevron_right),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
