import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/list_field.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';

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
      HeadedPanel.withCaption('Simple', [
        ListField()
          ..value = ['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5']
      ])
        ..width = '300px',
      HeadedPanel.withCaption('Disabled', [
        ListField()
          ..value = ['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5']
          ..disabled = true
      ])
        ..width = '300px'
    ]);
  }
}
