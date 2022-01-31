import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class TextFieldsView extends View {
  TextFieldsView() {
    dartClassName('TextFieldsView');
    fullSize();
    fillContent();
    setPadding(10);
    vertical();
    setSpaceBetweenItems(10);
    addAll([
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'Text field', TextField()]),
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'Text area field', TextAreaField()]),
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'Numeric field', NumField()]),
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Date field',
          DateField()..value = DateTime.now()
        ]),
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Date time field',
          DateField()..showTime()..value = DateTime.now()
        ]),
    ]);
  }

  static const String id = 'text_fields';
  static const String caption = 'Text fileds';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
