import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';

import '../showcase_app.dart';

class MessagesView extends View {
  MessagesView() : super('MessagesView') {
    id = 'messages';
    caption = 'Messages';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HeadedPanel.withCaption('Messages', [
        SimpleButton()
          ..caption = 'Show error'
          ..onClick.listen((event) => mainWindow.showError('error')),
        SimpleButton()
          ..caption = 'Show fatal error'
          ..onClick.listen((event) => mainWindow.showFatalError('error'))
      ])..width = '300px',
    ]);
  }
}
