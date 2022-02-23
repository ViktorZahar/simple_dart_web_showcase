import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/file_chooser.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';

class FileChooserView extends View {
  FileChooserView() : super('FileChooserView') {
    vertical = true;
    fullSize();
    fillContent = true;
    padding = '10px';
    stride = '10px';
    id = 'file_chooser';
    caption = 'FileChooser';
    addAll([
      Panel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'File chooser',
          FileChooser()..caption = 'Caption'
        ])
    ]);
  }
}
