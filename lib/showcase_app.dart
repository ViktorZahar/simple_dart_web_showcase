import 'package:simple_dart_web_views/main_window_with_nav_path_theme.dart';
import 'package:simple_dart_web_widgets/theme_controller.dart';

import 'views/buttons_view.dart';
import 'views/chart_widget_view.dart';
import 'views/checkbox_view.dart';
import 'views/child_view.dart';
import 'views/context_menu_view.dart';
import 'views/dialog_view.dart';
import 'views/file_chooser_view.dart';
import 'views/form_panel_view.dart';
import 'views/home_view.dart';
import 'views/list_field_view.dart';
import 'views/messages_view.dart';
import 'views/object_table_view.dart';
import 'views/panel_view.dart';
import 'views/parent_view.dart';
import 'views/radiobutton_view.dart';
import 'views/repository_table_view.dart';
import 'views/select_field_view.dart';
import 'views/simple_table_view.dart';
import 'views/state_view.dart';
import 'views/tab_panel_view.dart';
import 'views/fields_view.dart';

MainWindowWithNavPathTheme mainWindow = MainWindowWithNavPathTheme();

void start() {
  themeController.themeList = [
    'default',
    'dark',
    'blue',
    'default mono',
    'dark mono'
  ];
  mainWindow.init(HomeView(), [
    PanelView(),
    FormPanelView(),
    CheckboxView(),
    SelectFieldView(),
    RadioView(),
    ListFieldView(),
    FieldsView(),
    ButtonsView(),
    ContextMenuView(),
    FileChooserView(),
    TabPanelView(),
    MessagesView(),
    DialogView(),
    SimpleTableView(),
    ObjectTableView(),
    RepositoryTableView(),
    ChartWidgetView(),
    StateView(),
    ParentView(),
    ChildView()
  ]);
}
