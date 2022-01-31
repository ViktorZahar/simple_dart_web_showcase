import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class TabPanelView extends View {
  TabPanelView() {
    dartClassName('TabPanelView');
    fullSize();
    fillContent();
    setPadding(10);
    vertical();
    setSpaceBetweenItems(10);
    final tabPanel = TabPanel()
      ..fillContent()
      ..fullSize();
    final tag1 = tabPanel.addTab(
        'Tab1',
        HVPanel()
          ..nodeRoot.style.border = '1px black solid'
          ..add(SimpleLabel()..caption='Tab1 content')
          ..vertical()
          ..fullSize()
          ..fillContent());
    tabPanel..addTab(
        'Tab2',
        HVPanel()
          ..nodeRoot.style.border = '1px black solid'
          ..add(SimpleLabel()..caption='Tab2 content')
          ..vertical()
          ..fullSize()
          ..fillContent())
    ..addTab(
        'Tab3',
        HVPanel()
          ..nodeRoot.style.border = '1px black solid'
          ..add(SimpleLabel()..caption='Tab3 content')
          ..vertical()
          ..fullSize()
          ..fillContent());
    tabPanel.currentTag = tag1;
    addAll([tabPanel]);
  }

  static const String id = 'tab_panel';
  static const String caption = 'Tab panel';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
