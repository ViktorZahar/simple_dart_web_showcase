import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/checkbox_field.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';

class CheckboxView extends View {
  CheckboxView() : super('CheckboxView') {
    id = 'checkbox';
    caption = 'CheckboxField';
    fullSize();
    fillContent = true;
    vertical = true;
    add(HeadedPanel.withCaption('Checkbox fields', [
      CheckboxField()
        ..caption = 'Option 1'
        ..value = true,
      CheckboxField()..caption = 'Option 2',
      CheckboxField()
        ..caption = 'Disabled'
        ..disabled = true,
    ])
      ..width = '300px');
  }
}
