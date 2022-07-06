import 'package:simple_dart_web_charts/chart.dart';
import 'package:simple_dart_web_views/view.dart';
import 'package:simple_dart_web_widgets/chart_widget.dart';
import 'package:simple_dart_web_widgets/headed_panel.dart';

class ChartWidgetView extends View {
  ChartWidgetView() : super('ChartWidgetView') {
    id = 'chart_widget';
    caption = 'ChartWidget';
    vertical = true;
    fullSize();
    add(HeadedPanel.withCaption('Line chart', [lineChart]));
    add(HeadedPanel.withCaption('Candle chart', [candleChart]));
  }

  @override
  void afterShow() {
    lineChart.clear();
    candleChart.clear();
    waitForReady().then((_) {
      lineChart.renderLineChart([
        LineRow(DateTime.parse('2020-01-01'), 0.9),
        LineRow(DateTime.parse('2020-01-02'), 1.2),
        LineRow(DateTime.parse('2020-01-03'), 1.3),
        LineRow(DateTime.parse('2020-01-04'), -5),
        LineRow(DateTime.parse('2020-01-05'), 11),
        LineRow(DateTime.parse('2020-01-06'), 4),
        LineRow(DateTime.parse('2020-01-07'), 2),
        LineRow(DateTime.parse('2020-01-08'), 3),
        LineRow(DateTime.parse('2020-01-09'), 0),
        LineRow(DateTime.parse('2020-01-10'), -1),
      ]);

      candleChart.renderCandleChart([
        CandleRow(DateTime.parse('2020-01-01'), 0.9, 1.3, -5, 1.3),
        CandleRow(DateTime.parse('2020-02-01'), 1.2, 11, -5, 1.3),
        CandleRow(DateTime.parse('2020-03-01'), 1.3, 11, -5, 4),
        CandleRow(DateTime.parse('2020-04-01'), 3, 11, 0, 2),
        CandleRow(DateTime.parse('2020-05-01'), 1, 4, 2, 3),
        CandleRow(DateTime.parse('2020-06-01'), 4, 5, 3, 0),
        CandleRow(DateTime.parse('2020-07-01'), 0, 3, -1, -1),
        CandleRow(DateTime.parse('2020-08-01'), -1, 1, -10, -5),
        CandleRow(DateTime.parse('2020-09-01'), -7, -2, -15, -10),
        CandleRow(DateTime.parse('2020-10-01'), -10, -3, -10, -3),
      ]);
    });
  }

  ChartWidget lineChart = ChartWidget()
    ..styleFromTheme = true
    ..width = '300px'
    ..height = '200px';

  ChartWidget candleChart = ChartWidget()
    ..styleFromTheme = true
    ..width = '300px'
    ..height = '200px';
}
