import 'package:simple_dart_web_views/main_window.dart';
import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class ChildView extends View {
  ChildView() : super('ChildView') {
    padding = '5px';
    stride = '5px';
    id = 'child_view';
    caption = 'Child View';
    isChild = true;
    vertical = true;
  }

  @override
  Future<void> init() async {
    clear();
    add(SimpleLabel()..caption = 'fullPath:${fullPathOfView(this)}');
    add(SimpleLabel()..caption = 'Params:');
    params.forEach((key, value) {
      add(SimpleLabel()..caption = '$key=$value');
    });
    caption = 'Child View of ${params['name'] ?? ''}';
  }
}
