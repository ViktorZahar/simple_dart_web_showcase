import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/dialogs.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';

class DialogView extends View {
  DialogView() : super('DialogView') {
    id = 'dialogs';
    caption = 'Dialogs';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      Panel()
        ..vertical = true
        ..width = '300px'
        ..stride = '10px'
        ..addAll([
          SimpleButton()
            ..caption = 'Open dialog'
            ..onClick.listen((event) {
              dialogExample.showDialog();
            }),
        ]),
    ]);
  }

  DialogExample dialogExample = DialogExample();
}

class DialogExample extends AbstractDialog<String> {
  DialogExample() {
    onClose.listen((event) {
      completer!.complete(inputField.value);
    });
  }

  final inputField = TextField();

  @override
  PanelComponent createDialogWindow() {
    final ret = Panel()
      ..addCssClass('DialogExample')
      ..vertical = true
      ..stride = '5px'
      ..padding = '5px'
      ..addAll([
        SimpleLabel()..caption = 'DialogExample',
        SimpleLabel()..caption = 'Input value',
        inputField
      ]);

    return ret;
  }
}
