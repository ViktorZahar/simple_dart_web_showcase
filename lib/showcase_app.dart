import 'main_window_with_theme.dart';
import 'views/buttons_view.dart';
import 'views/checkbox_view.dart';
import 'views/context_menu_view.dart';
import 'views/dialog_view.dart';
import 'views/file_chooser_view.dart';
import 'views/home_view.dart';
import 'views/hv_panel_view.dart';
import 'views/list_field_view.dart';
import 'views/messages_view.dart';
import 'views/radiobutton_view.dart';
import 'views/select_field_view.dart';
import 'views/tab_panel_view.dart';
import 'views/table_view.dart';
import 'views/text_fields_view.dart';

MainWindowWithTheme mainWindow = MainWindowWithTheme();

void start() {
  final homeView = HomeView();
  mainWindow
    ..registerView(homeView)
    ..registerView(HVPanelView())
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
    ..registerView(TableView())
    ..init(homeView);
}
