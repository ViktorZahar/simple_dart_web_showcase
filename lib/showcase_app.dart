import 'dart:html';

import 'package:simple_dart_web_views/main_window_with_nav_path_theme.dart';

import 'views/buttons_view.dart';
import 'views/checkbox_view.dart';
import 'views/child_view.dart';
import 'views/context_menu_view.dart';
import 'views/dialog_view.dart';
import 'views/file_chooser_view.dart';
import 'views/home_view.dart';
import 'views/list_field_view.dart';
import 'views/messages_view.dart';
import 'views/panel_view.dart';
import 'views/parent_view.dart';
import 'views/radiobutton_view.dart';
import 'views/select_field_view.dart';
import 'views/tab_panel_view.dart';
import 'views/tables_view.dart';
import 'views/text_fields_view.dart';

MainWindowWithNavPathTheme mainWindow = MainWindowWithNavPathTheme();

void start() {
  final homeView = HomeView();
  mainWindow
    ..registerView(homeView)
    ..registerView(PanelView())
    ..registerView(CheckboxView())
    ..registerView(SelectFieldView())
    ..registerView(RadioButtonView())
    ..registerView(ListFieldView())
    ..registerView(FieldsView())
    ..registerView(ButtonsView())
    ..registerView(ContextMenuView())
    ..registerView(FileChooserView())
    ..registerView(TabPanelView())
    ..registerView(MessagesView())
    ..registerView(DialogView())
    ..registerView(TablesView())
    ..registerView(ParentView())
    ..registerView(ChildView())
    ..init(homeView);
}
