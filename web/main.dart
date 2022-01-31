import 'dart:html';

import 'package:simple_dart_web_showcase/views/buttons_view.dart';
import 'package:simple_dart_web_showcase/views/checkbox_view.dart';
import 'package:simple_dart_web_showcase/views/context_menu_view.dart';
import 'package:simple_dart_web_showcase/views/dialog_view.dart';
import 'package:simple_dart_web_showcase/views/file_chooser_view.dart';
import 'package:simple_dart_web_showcase/views/home_view.dart';
import 'package:simple_dart_web_showcase/views/list_field_view.dart';
import 'package:simple_dart_web_showcase/views/messages_view.dart';
import 'package:simple_dart_web_showcase/views/radiobutton_view.dart';
import 'package:simple_dart_web_showcase/views/select_field_view.dart';
import 'package:simple_dart_web_showcase/views/tab_panel_view.dart';
import 'package:simple_dart_web_showcase/views/table_view.dart';
import 'package:simple_dart_web_showcase/views/text_fields_view.dart';
import 'package:simple_dart_web_views/src/main_window.dart';

Future<void> main() async {
  final homeView = HomeView();
  mainWindow
    ..navMenuPanel.width = '150px'
    ..navMenuPanel.visible = true
    ..registerView(homeView)
    ..registerView(CheckboxView())
    ..registerView(SelectFieldView())
    ..registerView(RadioButtonView())
    ..registerView(ListFieldView())
    ..registerView(TextFieldsView())
    ..registerView(ButtonsView())
    ..registerView(ContextMenuView())
    ..registerView(FileChooserView())
    ..registerView(TabPanelView())
    ..registerView(MessagesView())
    ..registerView(DialogView())
    ..registerView(TableView())
    ..init(homeView);
  querySelector('body')?.children.add(mainWindow.nodeRoot);
}
