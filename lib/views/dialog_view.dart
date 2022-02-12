import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/abstract_component.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/dialogs.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class DialogView extends View {
  DialogView() {
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
          SimpleButton()
            ..caption = 'Open dialog'
            ..onClick.listen((event) {
              final dialog = DialogExample();
              dialog.showDialog();
            }),
        ]),
    ]);
  }

  static const String id = 'dialogs';
  static const String caption = 'Dialogs';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}

class DialogExample extends DialogWindow<String> {
  DialogExample() {
    onClose.listen((event) {
      completer!.complete(inputField.value);
    });
  }

  @override
  String caption() => 'DialogWindow';

  final inputField = TextField();

  @override
  Component createDialogContent() {
    final ret = HVPanel()
      ..vertical = true
      ..stride = '5px'
      ..padding = '5px'
      ..addAll([SimpleLabel()..caption = 'Input value', inputField]);

    return ret;
  }
}
