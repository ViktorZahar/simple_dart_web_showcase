import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

import '../showcase_app.dart';

class MessagesView extends View {
  MessagesView() {
    fullSize();
    fillContent();
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..stride = '10px'
        ..addAll([
          SimpleLabel()..caption = 'Messages',
          SimpleButton()
            ..caption = 'Show error'
            ..onClick.listen((event) => mainWindow.showError('error')),
          SimpleButton()
            ..caption = 'Show fatal error'
            ..onClick.listen((event) => mainWindow.showFatalError('error'))
        ]),
    ]);
  }

  static const String id = 'messages';
  static const String caption = 'Messages';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
