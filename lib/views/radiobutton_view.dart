import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/fields/radio_field.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';

class RadioView extends View {
  RadioView() : super('RadioView') {
    id = 'radio';
    caption = 'RadioField';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HeadedPanel.withCaption('Row layout', [
        RadioField()
          ..groupName = 'row'
          ..addRadioButton('opt1', 'option1')
          ..addRadioButton('opt2', 'option2')
          ..addRadioButton('opt3', 'option3')
          ..addRadioButton('opt4', 'option4')
      ])
        ..width = '300px'
        ..wrap = true,
      HeadedPanel.withCaption('Column layout', [
        RadioField()
          ..vertical = true
          ..groupName = 'vertical'
          ..addRadioButton('opt1', 'option1')
          ..addRadioButton('opt2', 'option2')
          ..addRadioButton('opt3', 'option3')
          ..addRadioButton('opt4', 'option4')
      ])
        ..width = '300px',
      HeadedPanel.withCaption('Disabled', [
        RadioField()
          ..vertical = true
          ..groupName = 'vertical'
          ..addRadioButton('opt1', 'option1')
          ..addRadioButton('opt2', 'option2')
          ..addRadioButton('opt3', 'option3')
          ..addRadioButton('opt4', 'option4')
          ..disabled = true
      ])
        ..width = '300px'
    ]);
  }
}
