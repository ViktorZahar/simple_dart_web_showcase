import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/radio_field.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class RadioButtonView extends View {
  RadioButtonView() {
    fullSize();
    fillContent();
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..wrap = true
        ..addAll([
          SimpleLabel()..caption = 'Row layout',
          RadioField()
            ..groupName = 'row'
            ..addRadioButton('opt1', 'option1')
            ..addRadioButton('opt2', 'option2')
            ..addRadioButton('opt3', 'option3')
            ..addRadioButton('opt4', 'option4')
        ]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Column layout',
          RadioField()
            ..vertical = true
            ..groupName = 'vertical'
            ..addRadioButton('opt1', 'option1')
            ..addRadioButton('opt2', 'option2')
            ..addRadioButton('opt3', 'option3')
            ..addRadioButton('opt4', 'option4')
        ]),
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Disabled',
          RadioField()
            ..vertical = true
            ..groupName = 'vertical'
            ..addRadioButton('opt1', 'option1')
            ..addRadioButton('opt2', 'option2')
            ..addRadioButton('opt3', 'option3')
            ..addRadioButton('opt4', 'option4')
            ..disabled = true
        ])
    ]);
  }

  static const String id = 'radiobutton';
  static const String caption = 'RadioField';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
