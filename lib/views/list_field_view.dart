import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class ListFieldView extends View {
  ListFieldView() {
    dartClassName('ListFieldView');
    fullSize();
    fillContent();
    setPadding(10);
    vertical();
    setSpaceBetweenItems(10);
    addAll([
      HVPanel()
        ..vertical()
        ..setSpaceBetweenItems(5)
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Simple',
          ListField()
            ..removeButtonSize = 20
            ..value = [
              'Option 1',
              'Option 2',
              'Option 3',
              'Option 4',
              'Option 5'
            ]
        ]),
      HVPanel()
        ..vertical()
        ..setSpaceBetweenItems(5)
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Disabled',
          ListField()
            ..value = [
              'Option 1',
              'Option 2',
              'Option 3',
              'Option 4',
              'Option 5'
            ]
            ..disabled = true
        ]),
    ]);
  }

  static const String id = 'list_field';
  static const String caption = 'List filed';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
