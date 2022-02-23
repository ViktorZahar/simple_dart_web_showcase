import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/radio_field.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';

class RadioButtonView extends View {
  RadioButtonView() : super('RadioButtonView') {
    id = 'radiobutton';
    caption = 'RadioField';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      Panel()
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
      Panel()
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
      Panel()
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
}
