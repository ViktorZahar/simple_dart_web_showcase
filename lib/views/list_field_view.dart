import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/list_field.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class ListFieldView extends View {
  ListFieldView() {
    fullSize();
    fillContent();
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HVPanel()
        ..vertical = true
        ..stride = '5px'
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Simple',
          ListField()
            ..value = [
              'Option 1',
              'Option 2',
              'Option 3',
              'Option 4',
              'Option 5'
            ]
        ]),
      HVPanel()
        ..vertical = true
        ..stride = '5px'
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Disabled',
          ListField()
            ..value = [
              'Option 1',
              'Option 2',
              'Option 3',
              'Option 4',
              'Option 5'
            ]
            ..disabled = true
        ]),
    ]);
  }

  static const String id = 'list_field';
  static const String caption = 'ListFiled';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
