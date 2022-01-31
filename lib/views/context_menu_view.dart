import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class ContextMenuView extends View {
  ContextMenuView() {
    dartClassName('ContextMenuView');
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
          SimpleLabel()..caption = 'Context menu',
          SimpleButton()
            ..caption = 'Show context menu'
            ..onClick((event) => {
                  contextMenu.showContextMenu(
                      ['Action 1', 'Action 2', 'Action 3', 'Action 4'],
                      event.client.x,
                      event.client.y)
                })
        ]),
    ]);
  }

  final contextMenu = ContextMenu();
  static const String id = 'context_menu';
  static const String caption = 'Context menu';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
