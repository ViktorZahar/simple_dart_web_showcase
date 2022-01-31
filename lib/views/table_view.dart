import 'package:simple_dart_web_views/views.dart';
import 'package:simple_dart_web_widgets/widgets.dart';

class TableView extends View {
  TableView() {
    dartClassName('TableView');
    fullSize();
    fillContent();
    setPadding(10);
    vertical();
    fillContent();
    fullSize();
    setSpaceBetweenItems(10);
    final simpleTable = createSimpleTable();
    final multiRowTable = createMultirowTable();
    addAll([
      HVPanel()
        ..fillContent()
        ..fullSize()
        ..vertical()
        ..setSpaceBetweenItems(5)
        ..addAll([simpleTable, multiRowTable]),
    ]);
  }

  static const String id = 'table';
  static const String caption = 'Tables';

  @override
  String getCaption() => caption;

  @override
  String getId() => id;

  SimpleTable createSimpleTable() {
    final ret = SimpleTable()
      ..fillContent()
      ..nameLabel.caption = 'Simple table'
      ..createColumn('column 1', 100)
      ..createColumn('column 2', 100)
      ..createColumn('column 3', 100)
      ..createColumn('column 4', 100)
      ..createColumn('column 5', 100);
    for (var i = 0; i < 1000; i++) {
      ret
        ..createRow(['val1', 1, 'val3', 'val4', 'val5'])
        ..createRow(['val1', 55.0, 'val3', 'val4', 'val5'])
        ..createRow(['val1', '22', 'val3', 'val4', 'val5']);
    }
    return ret;
  }

  SimpleTable createMultirowTable() {
    final ret = SimpleTable()
      ..fillContent()
      ..nameLabel.caption = 'Multirow table'
      ..createColumn('column 1', 100)
      ..createColumn('column 2', 100)
      ..createColumn('column 3', 100)
      ..createColumn('column 4', 100)
      ..createColumn('column 5', 100);
    for (var i = 0; i < 100; i++) {
      ret
        ..createRow([
          ['row1', 'row2', 'row3'],
          ['row1', 'row2'],
          ['row1'],
          ['row1', 'row2'],
          ['row1', 'row2', 'row3']
        ])
        ..createRow([
          ['val1'],
          ['val2'],
          ['val3'],
          ['val4'],
          ['val5']
        ]);
    }
    return ret;
  }
}
