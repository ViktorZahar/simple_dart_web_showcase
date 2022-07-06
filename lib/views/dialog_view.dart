import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/dialogs.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

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
      HeadedPanel.withCaption('Dialog example', [
        SimpleButton()
          ..caption = 'Open dialog'
          ..onClick.listen((event) {
            dialogExample.showDialog();
          }),
      ])
        ..width = '300px',
    ]);
  }

  DialogExample dialogExample = DialogExample();
}

class DialogExample extends SimpleDialogLayout<String> {
  DialogExample() : super() {
    stride = '5px';
    caption = 'DialogExample';
    bodyPanel
      ..stride = '5px'
      ..addAll([SimpleLabel()..caption = 'Input value', inputField]);

    onClose.listen((event) {
      completer.complete(inputField.value);
    });
  }

  final inputField = TextField();
}
