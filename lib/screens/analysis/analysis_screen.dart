import 'package:flutter/material.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const categories = [
      _AnalysisCategoryData(
        name: '생물',
        setCount: 3,
        questionCount: 80,
        correctCount: 48,
        wrongCount: 20,
        unansweredCount: 12,
        averageSolveSeconds: 43,
      ),
      _AnalysisCategoryData(
        name: '화학',
        setCount: 2,
        questionCount: 54,
        correctCount: 30,
        wrongCount: 18,
        unansweredCount: 6,
        averageSolveSeconds: 57,
      ),
      _AnalysisCategoryData(
        name: '영어',
        setCount: 4,
        questionCount: 60,
        correctCount: 42,
        wrongCount: 10,
        unansweredCount: 8,
        averageSolveSeconds: 35,
      ),
    ];

    final totalCorrect = categories.fold<int>(
      0,
      (sum, item) => sum + item.correctCount,
    );
    final totalWrong = categories.fold<int>(
      0,
      (sum, item) => sum + item.wrongCount,
    );
    final totalUnanswered = categories.fold<int>(
      0,
      (sum, item) => sum + item.unansweredCount,
    );
    final totalSolved = totalCorrect + totalWrong + totalUnanswered;
    final weightedAverageSeconds =
        categories.fold<int>(
          0,
          (sum, item) => sum + (item.averageSolveSeconds * item.totalCount),
        ) ~/
        totalSolved;

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '분석',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              '카테고리별 정답 비율과 평균 풀이시간을 한눈에 볼 수 있어요.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 12),
            _SummaryCard(
              correctCount: totalCorrect,
              wrongCount: totalWrong,
              unansweredCount: totalUnanswered,
              averageSolveSeconds: weightedAverageSeconds,
            ),
            const SizedBox(height: 24),
            const Text(
              '카테고리별 분석',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final item = categories[index];

                return _CategoryAnalysisTile(data: item);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;
  final int averageSolveSeconds;

  const _SummaryCard({
    required this.correctCount,
    required this.wrongCount,
    required this.unansweredCount,
    required this.averageSolveSeconds,
  });

  static const Color _correctColor = Color(0xFF2FBF71);
  static const Color _wrongColor = Color(0xFFE85D75);
  static const Color _unansweredColor = Color(0xFFB8C0CC);
  static const Color _primary = Color(0xFF6C63FF);
  static const Color _secondary = Color(0xFF4288F7);
  static const Color _cardColor = Colors.white;
  static const Color _dividerColor = Color(0xFFE7EBF3);
  static const Color _textPrimary = Color(0xFF1F2937);

  @override
  Widget build(BuildContext context) {
    final total = correctCount + wrongCount + unansweredCount;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: _dividerColor),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '전체 요약',
            style: TextStyle(
              color: _textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          _RatioBar(
            correctCount: correctCount,
            wrongCount: wrongCount,
            unansweredCount: unansweredCount,
            height: 14,
            borderRadius: 999,
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _LegendChip(
                color: _correctColor,
                label: '정답 ${_percent(correctCount, total)}%',
              ),
              _LegendChip(
                color: _wrongColor,
                label: '오답 ${_percent(wrongCount, total)}%',
              ),
              _LegendChip(
                color: _unansweredColor,
                label: '안 고름 ${_percent(unansweredCount, total)}%',
              ),
            ],
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: const LinearGradient(colors: [_primary, _secondary]),
            ),
            child: Row(
              children: [
                const Icon(Icons.timer_outlined, color: Colors.white, size: 20),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    '전체 평균 풀이시간',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  _formatDuration(averageSolveSeconds),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryAnalysisTile extends StatelessWidget {
  final _AnalysisCategoryData data;

  const _CategoryAnalysisTile({required this.data});

  static const Color _correctColor = Color(0xFF2FBF71);
  static const Color _wrongColor = Color(0xFFE85D75);
  static const Color _unansweredColor = Color(0xFFB8C0CC);
  static const Color _cardColor = Colors.white;
  static const Color _dividerColor = Color(0xFFE7EBF3);
  static const Color _textPrimary = Color(0xFF1F2937);
  static const Color _textSecondary = Color(0xFF6B7280);

  @override
  Widget build(BuildContext context) {
    final total = data.totalCount;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: _dividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F3FF),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        data.name,
                        style: const TextStyle(
                          color: _textPrimary,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${data.setCount}세트 · ${data.questionCount}문제',
                      style: const TextStyle(
                        color: _textSecondary,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.timer_outlined,
                    size: 18,
                    color: _textSecondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '평균 ${_formatDuration(data.averageSolveSeconds)}',
                    style: const TextStyle(
                      color: _textPrimary,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 14),
          _RatioBar(
            correctCount: data.correctCount,
            wrongCount: data.wrongCount,
            unansweredCount: data.unansweredCount,
            height: 12,
            borderRadius: 999,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _RatioInfo(
                  color: _correctColor,
                  label: '정답',
                  value: '${_percent(data.correctCount, total)}%',
                ),
              ),
              Expanded(
                child: _RatioInfo(
                  color: _wrongColor,
                  label: '오답',
                  value: '${_percent(data.wrongCount, total)}%',
                ),
              ),
              Expanded(
                child: _RatioInfo(
                  color: _unansweredColor,
                  label: '안 고름',
                  value: '${_percent(data.unansweredCount, total)}%',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RatioBar extends StatelessWidget {
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;
  final double height;
  final double borderRadius;

  const _RatioBar({
    required this.correctCount,
    required this.wrongCount,
    required this.unansweredCount,
    required this.height,
    required this.borderRadius,
  });

  static const Color _correctColor = Color(0xFF2FBF71);
  static const Color _wrongColor = Color(0xFFE85D75);
  static const Color _unansweredColor = Color(0xFFB8C0CC);

  @override
  Widget build(BuildContext context) {
    final total = correctCount + wrongCount + unansweredCount;

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: SizedBox(
        height: height,
        child: Row(
          children: [
            Expanded(
              flex: total == 0 ? 1 : correctCount,
              child: Container(color: _correctColor),
            ),
            Expanded(
              flex: total == 0 ? 1 : wrongCount,
              child: Container(color: _wrongColor),
            ),
            Expanded(
              flex: total == 0 ? 1 : unansweredCount,
              child: Container(color: _unansweredColor),
            ),
          ],
        ),
      ),
    );
  }
}

class _LegendChip extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendChip({required this.color, required this.label});

  static const Color _textPrimary = Color(0xFF1F2937);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              color: _textPrimary,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _RatioInfo extends StatelessWidget {
  final Color color;
  final String label;
  final String value;

  const _RatioInfo({
    required this.color,
    required this.label,
    required this.value,
  });

  static const Color _textPrimary = Color(0xFF1F2937);
  static const Color _textSecondary = Color(0xFF6B7280);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Flexible(
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$label ',
                  style: const TextStyle(
                    color: _textSecondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: value,
                  style: const TextStyle(
                    color: _textPrimary,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _AnalysisCategoryData {
  final String name;
  final int setCount;
  final int questionCount;
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;
  final int averageSolveSeconds;

  const _AnalysisCategoryData({
    required this.name,
    required this.setCount,
    required this.questionCount,
    required this.correctCount,
    required this.wrongCount,
    required this.unansweredCount,
    required this.averageSolveSeconds,
  });

  int get totalCount => correctCount + wrongCount + unansweredCount;
}

int _percent(int value, int total) {
  if (total == 0) return 0;
  return ((value / total) * 100).round();
}

String _formatDuration(int seconds) {
  if (seconds < 60) {
    return '$seconds초';
  }

  final minute = seconds ~/ 60;
  final second = seconds % 60;

  if (second == 0) {
    return '$minute분';
  }

  return '$minute분 $second초';
}
