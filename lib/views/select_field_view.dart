import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class SelectFieldView extends View {
  SelectFieldView() {
    dartClassName('SelectFieldView');
    fullSize();
    fillContent();
    setPadding(10);
    vertical();
    setSpaceBetweenItems(10);
    addAll([
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Single',
          SelectField()
            ..initOptions(
                ['option1', 'option2', 'option3', 'option4', 'option5'])
        ]),
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Singe disabled',
          SelectField()
            ..initOptions(
                ['option1', 'option2', 'option3', 'option4', 'option5'])
            ..disabled = true
        ]),
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Multi',
          SelectField()
            ..size = 4
            ..multiple = true
            ..initOptions(
                ['option1', 'option2', 'option3', 'option4', 'option5'])
        ]),
      HVPanel()
        ..vertical()
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Multi disabled',
          SelectField()
            ..multiple = true
            ..size = 4
            ..initOptions(
                ['option1', 'option2', 'option3', 'option4', 'option5'])
            ..disabled = true
        ])
    ]);
  }

  static const String id = 'select_field';
  static const String caption = 'Select filed';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
