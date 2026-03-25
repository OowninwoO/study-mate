import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:study_mate/api/main/quiz_api.dart';
import 'package:study_mate/screens/quiz/widgets/quiz_intro_card.dart';
import 'package:study_mate/services/pdf_picker_service.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/buttons/app_icon_button.dart';
import 'package:study_mate/widgets/buttons/app_icon_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  PlatformFile? selectedPdf;

  @override
  Widget build(BuildContext context) {
    final canGenerate = selectedPdf != null;

    return SafeArea(
      child: Column(
        children: [
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
                      fontWeight: FontWeight.w800,
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
                        fontWeight: FontWeight.w800,
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
              bgColor: canGenerate ? Colors.black : Colors.grey,
              icon: Icons.auto_awesome_rounded,
              iconColor: canGenerate ? AppColors.primary : Colors.white,
              iconSize: 24,
              text: '문제 생성하기',
              textColor: Colors.white,
              textSize: 16,
              textWeight: FontWeight.w800,
              onPressed: canGenerate
                  ? () async {
                      final pdf = selectedPdf;
                      if (pdf == null) return;

                      try {
                        await QuizApi.uploadPdf(pdf: pdf);
                      } catch (e) {
                        print(e);
                      }
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
