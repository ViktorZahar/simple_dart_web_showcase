import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';

class ButtonsView extends View {
  ButtonsView() {
    fullSize();
    fillContent();
    padding = '1px';
    vertical = true;
    stride = '1px';
    addAll([
      HVPanel()
        ..vertical = true
        ..padding = '10px'
        ..stride = '5px'
        ..width = '300px'
        ..addAll([
          SimpleButton()
            ..caption = 'Simple button',
        ]),
    ]);
  }

  static const String id = 'buttons';
  static const String caption = 'Buttons';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
