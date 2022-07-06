import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';
import 'package:simple_dart_web_widgets/panel.dart';
import 'package:simple_dart_web_widgets/tab_panel.dart';

class StateView extends View {
  StateView() : super('StateView') {
    fullSize();
    fillContent = true;
    vertical = true;
    id = 'state_view';
    caption = 'StateView';

    tabPanel
      ..addTab('Tab1', tab1)
      ..addTab('Tab2', tab2)
      ..addTab('Tab3', tab3);

    tab1.add(tabText1);
    tab2.add(tabText2);
    tab3.add(tabText3);

    initStateComponentList([tabPanel, tabText1, tabText2, tabText3]);
    add(HeadedPanel()..contentPanel.add(tabPanel));
  }

  TabPanel tabPanel = TabPanel()
    ..varName = 'tabPanel'
    ..vertical = true
    ..fillContent = true
    ..fullSize();

  final tab1 = Panel()
    ..varName = 'tab1'
    ..fullSize()
    ..fillContent = true
    ..vertical = true;

  final tab2 = Panel()
    ..varName = 'tab2'
    ..fullSize()
    ..fillContent = true
    ..vertical = true;

  final tab3 = Panel()
    ..varName = 'tab3'
    ..fullSize()
    ..fillContent = true
    ..vertical = true;

  TextField tabText1 = TextField()..varName = 'tabText1';
  TextField tabText2 = TextField()..varName = 'tabText2';
  TextField tabText3 = TextField()..varName = 'tabText3';
}
