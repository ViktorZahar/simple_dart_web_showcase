import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/date_field.dart';
import 'package:simple_dart_web_widgets/fields/date_time_field.dart';
import 'package:simple_dart_web_widgets/fields/num_field.dart';
import 'package:simple_dart_web_widgets/fields/text_area_field.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';

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
      HeadedPanel.withCaption('TextField', [TextField()])..width = '300px',
      HeadedPanel.withCaption('TextAreaField', [TextAreaField()])
        ..width = '300px',
      HeadedPanel.withCaption('NumField', [NumField()])..width = '300px',
      HeadedPanel.withCaption(
          'DateField', [DateField()..value = DateTime.now()])
        ..width = '300px',
      HeadedPanel.withCaption(
          'DateTimeField', [DateTimeField()..value = DateTime.now()])
        ..width = '300px'
    ]);
  }
}
