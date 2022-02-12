import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class HomeView extends View {
  HomeView() {
    vertical = true;
    padding = '20px';
    stride = '10px';
    add(SimpleLabel()..caption = 'SDW showcase');
  }

  @override
  String getCaption() => 'Home';

  @override
  View? getParentView() => null;

  @override
  String getId() => '';
}
