import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/select_field.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';

class SelectFieldView extends View {
  SelectFieldView() : super('SelectFieldView') {
    id = 'select_field';
    caption = 'SelectFiled';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HeadedPanel.withCaption('Single', [
        SelectField()
          ..initOptions(['option1', 'option2', 'option3', 'option4', 'option5'])
      ])
        ..width = '300px',
      HeadedPanel.withCaption('Singe disabled', [
        SelectField()
          ..initOptions(['option1', 'option2', 'option3', 'option4', 'option5'])
          ..disabled = true
      ])
        ..width = '300px',
      HeadedPanel.withCaption('Multi', [
        SelectField()
          ..size = 4
          ..multiple = true
          ..initOptions(['option1', 'option2', 'option3', 'option4', 'option5'])
      ])
        ..width = '300px',
      HeadedPanel.withCaption('Multi disabled', [
        SelectField()
          ..multiple = true
          ..size = 4
          ..initOptions(['option1', 'option2', 'option3', 'option4', 'option5'])
          ..disabled = true
      ])
        ..width = '300px'
    ]);
  }
}
