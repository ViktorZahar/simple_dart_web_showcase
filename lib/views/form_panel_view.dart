import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/form_panel.dart';

class FormPanelView extends View {
  FormPanelView() : super('FormPanelView') {
    id = 'form_panel';
    caption = 'FormPanel';
    formPanel
      ..labelsWidth = '100px'
      ..padding = '10px'
      ..stride = '5px'
      ..formStride = '5px'
      ..addComponent('TextField1', TextField())
      ..addComponent('TextField2', TextField())
      ..addLabel('Label1', 'Label1')
      ..addComponent('Button1', SimpleButton()..caption = 'Button1');
    add(formPanel);
  }

  FormPanel formPanel = FormPanel();
}
