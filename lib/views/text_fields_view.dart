import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/date_field.dart';
import 'package:simple_dart_web_widgets/fields/date_time_field.dart';
import 'package:simple_dart_web_widgets/fields/num_field.dart';
import 'package:simple_dart_web_widgets/fields/text_area_field.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class FieldsView extends View {
  FieldsView() {
    fullSize();
    fillContent();
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'TextField', TextField()]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'TextAreaField', TextAreaField()]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'NumField', NumField()]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'DateField',
          DateField()..value = DateTime.now()
        ]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'DateTimeField',
          DateTimeField()..value = DateTime.now()
        ]),
    ]);
  }

  static const String id = 'text_fields';
  static const String caption = 'Fields';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
