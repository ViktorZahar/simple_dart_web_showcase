import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/list_field.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';

class ListFieldView extends View {
  ListFieldView() : super('ListFieldView') {
    id = 'list_field';
    caption = 'ListFiled';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      Panel()
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
      Panel()
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
}
