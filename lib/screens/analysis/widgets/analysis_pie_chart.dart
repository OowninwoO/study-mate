import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnalysisPieChart extends StatelessWidget {
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;

  const AnalysisPieChart({
    super.key,
    required this.correctCount,
    required this.wrongCount,
    required this.unansweredCount,
  });

  PieChartSectionData _section({
    required Color color,
    required int count,
    required int total,
  }) {
    final percent = ((count / total) * 100).round();

    return PieChartSectionData(
      value: count.toDouble(),
      color: color,
      radius: 60,
      title: '$percent%',
      titleStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final total = correctCount + wrongCount + unansweredCount;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 200,
          child: PieChart(
            PieChartData(
              centerSpaceRadius: 40,
              sectionsSpace: 3,
              pieTouchData: PieTouchData(enabled: false),
              sections: [
                _section(
                  color: Colors.green,
                  count: correctCount,
                  total: total,
                ),
                _section(color: Colors.red, count: wrongCount, total: total),
                _section(
                  color: Colors.grey,
                  count: unansweredCount,
                  total: total,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        _PieLegend(
          correctCount: correctCount,
          wrongCount: wrongCount,
          unansweredCount: unansweredCount,
        ),
      ],
    );
  }
}

class _PieLegend extends StatelessWidget {
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;

  const _PieLegend({
    required this.correctCount,
    required this.wrongCount,
    required this.unansweredCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _PieLegendItem(color: Colors.green, label: '정답', count: correctCount),
        _PieLegendItem(color: Colors.red, label: '오답', count: wrongCount),
        _PieLegendItem(
          color: Colors.grey,
          label: '미응답',
          count: unansweredCount,
        ),
      ],
    );
  }
}

class _PieLegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final int count;

  const _PieLegendItem({
    required this.color,
    required this.label,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        Text(
          '$label $count',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
