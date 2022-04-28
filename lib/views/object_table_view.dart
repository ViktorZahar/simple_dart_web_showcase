import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/panel.dart';
import 'package:simple_dart_web_widgets/tables/object_table.dart';

class ObjectTableView extends View {
  ObjectTableView() : super('ObjectTableView') {
    id = 'object_table';
    caption = 'ObjectTable';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    stride = '10px';
    final objectTable = createObject();
    addAll([
      Panel()
        ..fillContent = true
        ..fullSize()
        ..vertical = true
        ..stride = '5px'
        ..addAll([objectTable]),
    ]);
  }

  ObjectTable createObject() {
    final ret = ObjectTable<ObjectTableObj>(objectRowAdapter, selectable: true)
      ..fillContent = true
      ..createColumn('column 1', 100, sortable: true)
      ..createColumn('column 2', 100, sortable: true)
      ..createColumn('column 3', 100, sortable: true);
    for (var i = 0; i < 100; i++) {
      ret.createObjectRow(ObjectTableObj()
        ..column1 = 'string $i'
        ..column2 = i
      ..column3= DateTime.now().add(-Duration(days: i)));
    }
    return ret;
  }
}

class ObjectTableObj {
  String column1 = '';
  int column2 = 0;
  DateTime column3 = DateTime.now();
}

List<dynamic> objectRowAdapter(ObjectTableObj object) =>
    [object.column1, object.column2, object.column3];
