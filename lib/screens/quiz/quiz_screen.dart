import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_mate/providers/quiz/quiz_generating_provider.dart';
import 'package:study_mate/providers/quiz/quiz_set_list_provider.dart';
import 'package:study_mate/screens/quiz/widgets/quiz_intro_card.dart';
import 'package:study_mate/services/pdf_picker_service.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/utils/logger_util.dart';
import 'package:study_mate/utils/toast_util.dart';
import 'package:study_mate/widgets/buttons/app_icon_button.dart';
import 'package:study_mate/widgets/buttons/app_icon_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';
import 'package:study_mate/widgets/quiz_generating_banner.dart';

class QuizScreen extends ConsumerStatefulWidget {
  const QuizScreen({super.key});

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  PlatformFile? selectedPdf;

  Future<void> _generateQuiz() async {
    ref.read(quizGeneratingProvider.notifier).state = true;

    try {
      await ref.read(quizSetListProvider.notifier).generateQuiz(selectedPdf!);
      ToastUtil.success('문제 생성에 성공했습니다.');
    } catch (e) {
      LoggerUtil.e(e);
      ToastUtil.error('문제 생성에 실패했습니다.');
    } finally {
      ref.read(quizGeneratingProvider.notifier).state = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isGenerating = ref.watch(quizGeneratingProvider);
    final canGenerateQuiz = !isGenerating && selectedPdf != null;

    return SafeArea(
      child: Column(
        children: [
          if (isGenerating) const QuizGeneratingBanner(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const QuizIntroCard(),
                  const SizedBox(height: 24),
                  const Text(
                    '문서 업로드',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  AppListTile(
                    color: Colors.white,
                    leading: AppIconButton(
                      bgColor: AppColors.primary.withValues(alpha: 0.1),
                      icon: Icons.upload_file_rounded,
                      iconColor: AppColors.primary,
                      iconSize: 30,
                    ),
                    title: 'PDF 업로드',
                    subtitle: '파일을 선택해서 문제 생성을 준비하세요',
                    trailing: AppIconButton(
                      bgColor: Colors.black,
                      icon: Icons.add_rounded,
                      iconColor: Colors.white,
                      iconSize: 24,
                    ),
                    onTap: () async {
                      final pdf = await PdfPickerService.pickPdf();
                      if (pdf == null) return;

                      setState(() {
                        selectedPdf = pdf;
                      });
                    },
                  ),
                  if (selectedPdf != null) ...[
                    const SizedBox(height: 24),
                    const Text(
                      '업로드한 PDF',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 12),
                    AppListTile(
                      color: Colors.white,
                      leading: AppIconButton(
                        bgColor: Colors.red.withValues(alpha: 0.1),
                        icon: Icons.picture_as_pdf_rounded,
                        iconColor: Colors.red,
                        iconSize: 30,
                      ),
                      title: selectedPdf!.name,
                      trailing: AppIconButton(
                        bgColor: Colors.black,
                        icon: Icons.close_rounded,
                        iconColor: Colors.white,
                        iconSize: 24,
                      ),
                      onTap: () {
                        setState(() {
                          selectedPdf = null;
                        });
                      },
                    ),
                  ],
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: AppIconTextButton(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              bgColor: canGenerateQuiz ? Colors.black : Colors.grey,
              icon: Icons.auto_awesome_rounded,
              iconColor: canGenerateQuiz ? AppColors.primary : Colors.white,
              iconSize: 24,
              text: '문제 생성하기',
              textColor: Colors.white,
              textSize: 16,
              textWeight: FontWeight.w700,
              onPressed: canGenerateQuiz ? _generateQuiz : null,
            ),
          ),
        ],
      ),
    );
  }
}
