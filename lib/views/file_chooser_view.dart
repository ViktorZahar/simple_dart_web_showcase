import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/file_chooser.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class FileChooserView extends View {
  FileChooserView() {
    vertical = true;
    fullSize();
    fillContent();
    padding = '10px';
    stride = '10px';
    addAll([
      HVPanel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'File chooser',
          FileChooser()..caption = 'Caption'
        ])
    ]);
  }

  static const String id = 'file_chooser';
  static const String caption = 'FileChooser';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
