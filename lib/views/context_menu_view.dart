import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/context_menu.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';

class ContextMenuView extends View {
  ContextMenuView() : super('ContextMenuView') {
    id = 'context_menu';
    caption = 'ContextMenu';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      Panel()
        ..vertical = true
        ..width = '300px'
        ..addAll([
          SimpleLabel()..caption = 'Context menu',
          SimpleButton()
            ..caption = 'Show context menu'
            ..onClick.listen((event) => {
                  contextMenu.showContextMenu(
                      ['Action 1', 'Action 2', 'Action 3', 'Action 4'],
                      event.client.x,
                      event.client.y)
                })
        ]),
    ]);
  }

  final contextMenu = ContextMenu();
}
