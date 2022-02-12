import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/tab_panel.dart';

class TabPanelView extends View {
  TabPanelView() {
    fullSize();
    fillContent();
    padding = '10px';
    vertical = true;
    stride = '10px';
    final tabPanel = TabPanel()
      ..fillContent()
      ..fullSize();
    final tag1 = tabPanel.addTab(
        'Tab1',
        HVPanel()
          ..add(SimpleLabel()..caption = 'Tab1 content')
          ..padding = '5px'
          ..vertical = true
          ..fullSize()
          ..fillContent());
    tabPanel
      ..addTab(
          'Tab2',
          HVPanel()
            ..add(SimpleLabel()..caption = 'Tab2 content')
            ..padding = '5px'
            ..vertical = true
            ..fullSize()
            ..fillContent())
      ..addTab(
          'Tab3',
          HVPanel()
            ..add(SimpleLabel()..caption = 'Tab3 content')
            ..padding = '5px'
            ..vertical = true
            ..fullSize()
            ..fillContent())
      ..currentTag = tag1;
    addAll([tabPanel]);
  }

  static const String id = 'tab_panel';
  static const String caption = 'TabPanel';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
