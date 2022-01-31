import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class ButtonsView extends View {
  ButtonsView() {
    dartClassName('ButtonsView');
    fullSize();
    fillContent();
    setPadding(1);
    vertical();
    setSpaceBetweenItems(1);
    addAll([
      HVPanel()
        ..vertical()
        ..setPadding(10)
        ..setSpaceBetweenItems(5)
        ..width = '300px'
        ..addAll([
          SimpleButton()..caption = 'Simple button',
          SimpleButton()
            ..caption = 'Warning button'
            ..type = SimpleButtonType.warning,
          SimpleButton()
            ..caption = 'Disabled'
            ..enabled = false,
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
