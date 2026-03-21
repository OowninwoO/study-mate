import 'package:flutter/material.dart';
import 'package:study_mate/screens/quiz/widgets/quiz_intro_card.dart';
import 'package:study_mate/widgets/buttons/app_icon_button.dart';
import 'package:study_mate/widgets/buttons/app_icon_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  String? selectedPdfName = '경제학개론_중간정리.pdf';

  @override
  Widget build(BuildContext context) {
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
                      bgColor: const Color(0xFFF1EEFF),
                      icon: Icons.upload_file_rounded,
                      iconColor: const Color(0xFF6C63FF),
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
                    onTap: () {
                      setState(() {
                        selectedPdfName ??= '새로운_학습자료.pdf';
                      });
                    },
                  ),
                  if (selectedPdfName != null) ...[
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
                        bgColor: const Color(0xFFFFF1F1),
                        icon: Icons.picture_as_pdf_rounded,
                        iconColor: const Color(0xFFFF5A5F),
                        iconSize: 30,
                      ),
                      title: selectedPdfName!,
                      trailing: AppIconButton(
                        bgColor: Colors.black,
                        icon: Icons.close_rounded,
                        iconColor: Colors.white,
                        iconSize: 24,
                      ),
                      onTap: () {
                        setState(() {
                          selectedPdfName = null;
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
              bgColor: Colors.black,
              icon: Icons.auto_awesome_rounded,
              iconColor: const Color(0xFF6C63FF),
              iconSize: 24,
              text: '문제 생성하기',
              textColor: Colors.white,
              textSize: 16,
              textWeight: FontWeight.w800,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
