import 'package:simple_dart_web_views/main_window.dart';
import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class ChildView extends View {
  ChildView() : super('ChildView') {
    id = 'child_view';
    caption = 'Child View';
    isChild = true;
    vertical = true;
    fillContent = true;
    add(headedPanel);
  }

  @override
  Future<void> init() async {
    headedPanel.contentPanel.clear();
    headedPanel.caption = 'fullPath:${fullPathOfView(this)}';
    headedPanel.contentPanel.add(SimpleLabel()..caption = 'Params:');
    params.forEach((key, value) {
      headedPanel.contentPanel.add(SimpleLabel()..caption = '$key=$value');
    });
    caption = 'Child View of ${params['name'] ?? ''}';
  }
}

HeadedPanel headedPanel = HeadedPanel();
