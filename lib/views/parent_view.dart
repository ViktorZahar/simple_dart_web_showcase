import 'package:simple_dart_web_views/main_window.dart';
import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_link.dart';

class ParentView extends View {
  ParentView() : super('ParentView') {
    vertical = true;
    id = 'parent_view';
    caption = 'ParentView';
    fillContent = true;
    headedPanel.caption = 'fullPath:${fullPathOfView(this)}';
    final simpleLink = SimpleLink()
      ..caption = 'Open Child View'
      ..href = '${fullPathOfView(this)}/child_view?id=15&name=Alice';
    headedPanel.add(simpleLink);
    add(headedPanel);
  }

  HeadedPanel headedPanel = HeadedPanel();
}
