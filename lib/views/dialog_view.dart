import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class DialogView extends View {
  DialogView() {
    dartClassName('DialogView');
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
          SimpleButton()
            ..caption = 'Open dialog'
            ..onClick((event) {
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
    onCloseListener = () {
      completer!.complete(inputField.value);
    };
  }

  @override
  String caption() => 'Dialog example';

  final inputField = TextField();

  @override
  Component createDialogContent() {
    final ret = HVPanel()
      ..vertical()
      ..setSpaceBetweenItems(5)
      ..setPadding(5)
      ..addAll([SimpleLabel()..caption = 'Input value', inputField]);

    return ret;
  }
}
