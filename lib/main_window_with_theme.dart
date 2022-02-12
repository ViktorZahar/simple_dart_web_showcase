import 'dart:html';

import 'package:simple_dart_web_views/main_window.dart';
import 'package:simple_dart_web_views/simple_nav_bar.dart';
import 'package:simple_dart_web_views/simple_path_panel.dart';
import 'package:simple_dart_web_widgets/fields/select_field.dart';
import 'package:simple_dart_web_widgets/hv_panel.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';

import 'showcase_app.dart';

class MainWindowWithTheme extends MainWindow {
  HVPanel topPanel = HVPanel()
    ..addCssClass('SimplePathPanel')
    ..fullWidth()
    ..stride = '5px'
    ..height = '45px'
    ..padding = '5px'
    ..align = 'center';
  SimpleNavBar simpleNavBar = SimpleNavBar();
  SimplePathPanel simplePathPanel = SimplePathPanel()..fillContent();
  SelectField selectTheme = SelectField()
    ..initOptions(['default', 'blue'])
    ..height = '23px'
    ..onValueChange.listen((event) {
      mainWindow.switchTheme(event.newValue.first);
      window.localStorage['theme'] = event.newValue.first;
    });

  @override
  void configureMainWindow() {
    add(simpleNavBar);
    final verticalPanel = HVPanel()
      ..vertical = true
      ..fullSize()
      ..fillContent();
    add(verticalPanel);
    onRegisterView.listen((view) {
      simpleNavBar.addView(view);
    });
    onViewChange.listen((currentView) {
      simpleNavBar.refreshNavBar(currentView);
      simplePathPanel.refreshPathPanel(currentView);
    });
    topPanel.addAll(
        [simplePathPanel, SimpleLabel()..caption = 'theme', selectTheme]);
    verticalPanel.addAll([topPanel, display]);
    final theme = window.localStorage['theme'] ?? 'default';
    selectTheme.value = [theme];
  }
}
