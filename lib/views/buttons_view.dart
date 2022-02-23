import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/labels/simple_link.dart';
import 'package:simple_dart_web_widgets/panel.dart';

class ButtonsView extends View {
  ButtonsView() : super('ButtonsView') {
    fullSize();
    id = 'buttons';
    caption = 'Buttons';
    fillContent = true;
    padding = '1px';
    vertical = true;
    stride = '1px';
    addAll([
      Panel()
        ..vertical = true
        ..padding = '10px'
        ..stride = '5px'
        ..width = '300px'
        ..addAll([
          SimpleButton()..caption = 'Simple button',
          SimpleButton()
            ..caption = 'Disabled button'
            ..disabled = true,
          SimpleButton()
            ..caption = 'Active button'
            ..active = true,
          SimpleButton()
            ..caption = 'Disabled active button'
            ..disabled = true
            ..active = true,
          SimpleLink()
            ..caption = 'Simple link'
            ..href = 'https://google.com',
          SimpleLink()
            ..caption = 'Disabled link'
            ..href = 'https://google.com'
            ..disabled = true,
          SimpleLink()
            ..caption = 'Active link'
            ..href = 'https://google.com'
            ..active = true,
          SimpleLink()
            ..caption = 'Disabled active link'
            ..href = 'https://google.com'
            ..disabled = true
            ..active = true,
        ]),
    ]);
  }
}
