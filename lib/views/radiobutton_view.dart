import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class RadioButtonView extends View {
  RadioButtonView() {
    dartClassName('RadioButtonView');
    fullSize();
    fillContent();
    setPadding(10);
    vertical();
    setSpaceBetweenItems(10);
    addAll([
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..wrap()
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
        ..vertical()
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Column layout',
          RadioField()
            ..vertical()
            ..groupName = 'vertical'
            ..addRadioButton('opt1', 'option1')
            ..addRadioButton('opt2', 'option2')
            ..addRadioButton('opt3', 'option3')
            ..addRadioButton('opt4', 'option4')
        ]),
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Disabled',
          RadioField()
            ..vertical()
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
  static const String caption = 'Radio button';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
