import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class MessagesView extends View {
  MessagesView() {
    dartClassName('MessagesView');
    fullSize();
    fillContent();
    setPadding(10);
    vertical();
    setSpaceBetweenItems(10);
    addAll([
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..setSpaceBetweenItems(10)
        ..addAll([
          SimpleLabel()..caption = 'Messages',
          SimpleButton()
            ..caption = 'Show error'
            ..onClick((event) => mainWindow.showError('error')),
          SimpleButton()
            ..caption = 'Show fatal error'
            ..onClick((event) => mainWindow.showFatalError('error'))
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
