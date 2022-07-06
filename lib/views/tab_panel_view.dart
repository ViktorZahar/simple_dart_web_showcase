import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';
import 'package:simple_dart_web_widgets/tab_panel.dart';

class TabPanelView extends View {
  TabPanelView() : super('TabPanelView') {
    id = 'tab_panel';
    caption = 'TabPanel';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    final tabPanel = TabPanel()
      ..fillContent = true
      ..fullSize();
    final tag1 = tabPanel.addTab(
        'Tab1',
        Panel()
          ..add(SimpleLabel()..caption = 'Tab1 content')
          ..padding = '5px'
          ..vertical = true
          ..fullSize()
          ..fillContent = true);
    tabPanel
      ..addTab(
          'Tab2',
          Panel()
            ..add(SimpleLabel()..caption = 'Tab2 content')
            ..padding = '5px'
            ..vertical = true
            ..fullSize()
            ..fillContent = true)
      ..addTab(
          'Tab3',
          Panel()
            ..add(SimpleLabel()..caption = 'Tab3 content')
            ..padding = '5px'
            ..vertical = true
            ..fullSize()
            ..fillContent = true)
      ..addLazyTab('LazyTab', LazyTabComponentExample())
      ..currentTag = tag1;
    headedPanel.contentPanel.add(tabPanel);
    add(headedPanel);
  }

  HeadedPanel headedPanel = HeadedPanel()
    ..fullSize();
}

class LazyTabComponentExample extends LazyTabComponent {
  LazyTabComponentExample() : super() {
    padding = '5px';
  }

  @override
  Future<void> onShow() async {
    clear();
    add(SimpleLabel()..caption = 'LazyTab content');
  }
}
