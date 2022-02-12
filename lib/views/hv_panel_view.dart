import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';

import 'hv_panel_props.dart';

class HVPanelView extends View {
  HVPanelView() {
    fullSize();
    fillContent();
    align = 'flex-start';
    padding = '10px';
    stride = '1px';
    exampleHvPanel.addAll([
      SimpleButton()..caption = 'item1',
      SimpleButton()..caption = 'item2',
      SimpleButton()..caption = 'item3',
      SimpleButton()..caption = 'item4',
      SimpleButton()..caption = 'item5',
    ]);
    hvPanelProps = HVPanelProps(exampleHvPanel)..width = '200px';
    addAll([
      HVPanel()
        ..vertical = true
        ..fillContent()
        ..fullSize()
        ..padding = '10px'
        ..stride = '5px'
        ..add(exampleHvPanel),
      hvPanelProps,
    ]);
  }

  static const String id = 'hvpanel';
  static const String caption = 'HVPanel';

  HVPanel exampleHvPanel = HVPanel()
    ..addCssClass('exampleHvPanel')
    ..vertical = true
    ..width = '50%'
    ..height = '80%';

  late HVPanelProps hvPanelProps;

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
