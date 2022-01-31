import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class FileChooserView extends View {
  FileChooserView() {
    dartClassName('FileChooserView');
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
          SimpleLabel()..caption = 'File chooser',
          FileChooser()..caption = 'Caption'
        ])
    ]);
  }

  static const String id = 'file_chooser';
  static const String caption = 'File chooser';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
