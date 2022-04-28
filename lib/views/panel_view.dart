import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/panel.dart';

import 'panel_props.dart';

class PanelView extends View {
  PanelView() : super('PanelView') {
    id = 'panel';
    caption = 'Panel';
    fullSize();
    fillContent = true;
    align = 'flex-start';
    padding = '10px';
    stride = '1px';
    examplePanel.addAll([
      SimpleButton()..caption = 'item1',
      SimpleButton()..caption = 'item2',
      SimpleButton()..caption = 'item3',
      SimpleButton()..caption = 'item4',
      SimpleButton()..caption = 'item5',
    ]);
    panelProps = PanelProps(examplePanel)..width = '250px';
    addAll([
      Panel()
        ..vertical = true
        ..fillContent = true
        ..fullSize()
        ..padding = '10px'
        ..stride = '5px'
        ..add(examplePanel),
      panelProps,
    ]);
  }

  Panel examplePanel = Panel()
    ..addCssClass('ExamplePanel')
    ..vertical = true
    ..width = '300px'
    ..height = '200px';

  late PanelProps panelProps;
}
