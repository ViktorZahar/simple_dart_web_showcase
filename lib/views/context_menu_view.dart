import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/buttons.dart';
import 'package:simple_dart_web_widgets/context_menu.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

class ContextMenuView extends View {
  ContextMenuView() {
    fullSize();
    fillContent();
    padding = '10px';
    vertical = true;
    stride = '10px';
    addAll([
      HVPanel()
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
  static const String id = 'context_menu';
  static const String caption = 'ContextMenu';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;
}
