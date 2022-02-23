import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/date_field.dart';
import 'package:simple_dart_web_widgets/fields/date_time_field.dart';
import 'package:simple_dart_web_widgets/fields/num_field.dart';
import 'package:simple_dart_web_widgets/fields/text_area_field.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';

class FieldsView extends View {
  FieldsView() : super('FieldsView') {
    id = 'text_fields';
    caption = 'Fields';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      Panel()
        ..vertical = true
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'TextField', TextField()]),
      Panel()
        ..vertical = true
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'TextAreaField', TextAreaField()]),
      Panel()
        ..vertical = true
        ..width = '300px'
        ..addAll([SimpleLabel()..caption = 'NumField', NumField()]),
      Panel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'DateField',
          DateField()..value = DateTime.now()
        ]),
      Panel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'DateTimeField',
          DateTimeField()..value = DateTime.now()
        ]),
    ]);
  }
}
