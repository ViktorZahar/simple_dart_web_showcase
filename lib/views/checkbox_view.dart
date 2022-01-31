import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class CheckboxView extends View {
  CheckboxView() {
    dartClassName('CheckboxView');
    fullSize();
    fillContent();
    setPadding(1);
    vertical();
    setSpaceBetweenItems(1);
    addAll([
      CheckboxField()..caption = 'Option 1',
      CheckboxField()..caption = 'Option 2',
      CheckboxField()
        ..caption = 'disabled'
        ..disabled = true,
    ]);
  }

  static const String id = 'checkbox';
  static const String caption = 'Checkbox';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
