import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';
import 'package:simple_dart_web_widgets/panel.dart';
import 'package:simple_dart_web_widgets/tables/repository.dart';
import 'package:simple_dart_web_widgets/tables/repository_table.dart';

class RepositoryTableView extends View {
  RepositoryTableView() : super('RepositoryTableView') {
    id = 'repository_table';
    caption = 'RepositoryTable';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    stride = '10px';
    final exampleRepositoryTable = ExampleRepositoryTable()..loadMore();
    addAll([
      HeadedPanel()
        ..fullSize()
        ..vertical = true
        ..stride = '5px'
        ..contentPanel.addAll([exampleRepositoryTable]),
    ]);
  }
}

class ExampleRepositoryObject {
  String column1 = '';
  int column2 = 0;
  bool column3 = false;
}

class ExampleRepository extends Repository<ExampleRepositoryObject> {
  ExampleRepository();

  @override
  Future<List<ExampleRepositoryObject>> loadMore() async {
    var lastId = 0;
    totalCount = 10000000000;
    final parsedAfter = int.tryParse(lastKey);
    if (parsedAfter != null) {
      lastId = parsedAfter;
    }
    lastKey = (lastId + pageSize).toString();
    final ret = <ExampleRepositoryObject>[];
    for (var i = lastId; i < lastId + pageSize; i++) {
      final obj = ExampleRepositoryObject()
        ..column1 = 'column1 $i'
        ..column2 = i
        ..column3 = i % 2 == 0;
      ret.add(obj);
      loadedCount++;
    }
    return ret;
  }
}

List<dynamic> exampleObjectRowAdapter(ExampleRepositoryObject object) => [
      object.column1,
      object.column2,
      object.column3,
    ];

ExampleRepository exampleRepository = ExampleRepository();

class ExampleRepositoryTable extends RepositoryTable<ExampleRepositoryObject> {
  ExampleRepositoryTable() : super(exampleRepository, exampleObjectRowAdapter) {
    fillContent = true;
    fullSize();
    createColumn('column1', 100);
    createColumn('column2', 100);
    createColumn('column3', 100);
    onLoadMore.listen((event) {
      headerLabel.caption =
          'Loaded: ${exampleRepository.loadedCount}/${exampleRepository.totalCount}';
    });
  }
}
