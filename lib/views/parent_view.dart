import 'package:simple_dart_web_views/main_window.dart';
import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/labels/simple_link.dart';

class ParentView extends View {
  ParentView() : super('ParentView') {
    vertical = true;
    id = 'parent_view';
    caption = 'Parent View';
    add(SimpleLabel()..caption = 'fullPath:${fullPathOfView(this)}');
    final simpleLink = SimpleLink()
      ..caption = 'Open Child View'
      ..href = '${fullPathOfView(this)}/child_view?id=15&name=Alice';
    add(simpleLink);
  }
}