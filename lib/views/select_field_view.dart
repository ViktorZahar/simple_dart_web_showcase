import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/select_field.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class SelectFieldView extends View {
  SelectFieldView() {
    fullSize();
    fillContent();
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Single',
          SelectField()
            ..initOptions(
                ['option1', 'option2', 'option3', 'option4', 'option5'])
        ]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Singe disabled',
          SelectField()
            ..initOptions(
                ['option1', 'option2', 'option3', 'option4', 'option5'])
            ..disabled = true
        ]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Multi',
          SelectField()
            ..size = 4
            ..multiple = true
            ..initOptions(
                ['option1', 'option2', 'option3', 'option4', 'option5'])
        ]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Multi disabled',
          SelectField()
            ..multiple = true
            ..size = 4
            ..initOptions(
                ['option1', 'option2', 'option3', 'option4', 'option5'])
            ..disabled = true
        ])
    ]);
  }

  static const String id = 'select_field';
  static const String caption = 'SelectFiled';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
