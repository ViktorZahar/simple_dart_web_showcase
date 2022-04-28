import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/panel.dart';
import 'package:simple_dart_web_widgets/tables/simple_table.dart';
import 'package:simple_dart_web_widgets/tables/table_with_header_copy.dart';

class SimpleTableView extends View {
  SimpleTableView() : super('SimpleTableView') {
    id = 'simple_table';
    caption = 'SimpleTable';
    fullSize();
    fillContent=true;
    padding = '10px';
    vertical = true;
    fillContent=true;
    fullSize();
    stride = '10px';
    final simpleTable = createSimpleTable();
    final multiRowTable = createTableWithHeaderCopy();
    addAll([
      Panel()
        ..fillContent=true
        ..fullSize()
        ..vertical = true
        ..stride = '5px'
        ..addAll([simpleTable, multiRowTable]),
    ]);
  }

  SimpleTable createSimpleTable() {
    final ret = SimpleTable()
      ..fillContent=true
      ..createColumn('column 1', 100, sortable: true)
      ..createColumn('column 2', 100, sortable: true)
      ..createColumn('column 3', 100)
      ..createColumn('column 4', 100)
      ..createColumn('column 5', 100);
    for (var i = 0; i < 100; i++) {
      ret
        ..createRow(['val1', 1, 'val3', 'val4', 'val5'])
        ..createRow(['val3', 55.0, 'val3', 'val4', 'val5'])
        ..createRow(['val1', '22', 'val3', 'val4', 'val5']);
    }
    return ret;
  }

  SimpleTable createTableWithHeaderCopy() {
    final ret = TableWithHeaderCopy()
      ..headerLabel.caption = 'TableWithHeaderCopy'
      ..fillContent=true
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
