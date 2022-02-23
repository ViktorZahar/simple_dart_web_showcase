import 'package:simple_dart_web_widgets/fields/checkbox_field.dart';
import 'package:simple_dart_web_widgets/fields/select_field.dart';
import 'package:simple_dart_web_widgets/fields/text_field.dart';
import 'package:simple_dart_web_widgets/labels/simple_label.dart';
import 'package:simple_dart_web_widgets/panel.dart';
import 'package:simple_dart_web_widgets/utils.dart';

import '../showcase_app.dart';

class HVPanelProps extends PanelComponent {
  HVPanelProps(this.target) : super('PanelComponent') {
    vertical = true;
    wrap = true;
    align = 'flex-start';
    stride = '6px';
    padding = '10px';
    addAll([
      SimpleLabel()..caption = 'Properties',
      chbVertical,
      chbWrap,
      chbScrollable,
      chbFillContent,
      chbLoadIndicator,
      labelComponent('align', cmbAlign),
      labelComponent('padding', txtPadding),
      labelComponent('stride', txtStride),
    ]);

    chbVertical
      ..value = target.vertical
      ..onValueChange.listen((event) {
        target.vertical = event.newValue;
      });

    chbWrap
      ..value = target.wrap
      ..onValueChange.listen((event) {
        target.wrap = event.newValue;
      });

    chbScrollable
      ..value = target.scrollable
      ..onValueChange.listen((event) {
        target.scrollable = event.newValue;
      });

    chbFillContent
      ..value = target.fillContent
      ..onValueChange.listen((event) {
        target.fillContent = event.newValue;
      });

    chbLoadIndicator
      ..value = false
      ..onValueChange.listen((event) {
        if (event.newValue) {
          mainWindow.loadIndicator.show(target);
        } else {
          mainWindow.loadIndicator.hide();
        }
      });

    cmbAlign
      ..value = [target.align]
      ..onValueChange.listen((event) {
        target.align = event.newValue.first;
      });

    txtPadding
      ..value = target.padding
      ..onValueChange.listen((event) {
        target.padding = event.newValue;
      });

    txtStride
      ..value = target.stride
      ..onValueChange.listen((event) {
        target.stride = event.newValue;
      });
  }

  late Panel target;

  CheckboxField chbVertical = CheckboxField()..caption = 'vertical';
  CheckboxField chbWrap = CheckboxField()..caption = 'wrap';
  CheckboxField chbScrollable = CheckboxField()..caption = 'scrollable';
  CheckboxField chbFillContent = CheckboxField()..caption = 'fillContent';
  CheckboxField chbLoadIndicator = CheckboxField()..caption = 'loadIndicator';
  SelectField cmbAlign = SelectField()
    ..initOptions(['stretch', 'center', 'flex-start', 'flex-end']);
  TextField txtPadding = TextField();
  TextField txtStride = TextField();
}
