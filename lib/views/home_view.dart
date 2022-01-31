import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class HomeView extends View {
  HomeView() {
    vertical();
    setPadding(20);
    setSpaceBetweenItems(10);
    add(SimpleLabel()..caption = 'SDW showcase');
  }

  @override
  String getCaption() => 'Home';

  @override
  View? getParentView() => null;

  @override
  String getId() => '';

  @override
  Component getTitleComponent() => SimpleLink()
    ..image = 'images/home_icon.svg'
    ..width = '35px'
    ..height = '35px'
    ..href = '#';
}
