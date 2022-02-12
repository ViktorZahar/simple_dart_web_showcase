import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/checkbox_field.dart';

class CheckboxView extends View {
  CheckboxView() {
    fullSize();
    fillContent();
    padding = '1px';
    stride = '1px';
    vertical = true;
    addAll([
      CheckboxField()
        ..caption = 'Option 1'
        ..value = true,
      CheckboxField()..caption = 'Option 2',
      CheckboxField()
        ..caption = 'Disabled'
        ..disabled = true,
    ]);
  }

  static const String id = 'checkbox';
  static const String caption = 'CheckboxField';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
