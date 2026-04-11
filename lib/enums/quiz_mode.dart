enum QuizMode {
  practice(title: '연습 모드', subtitle: '정답과 해설을 보면서 풀기'),
  test(title: '시험 모드', subtitle: '실전처럼 정답 없이 풀기');

  final String title;
  final String subtitle;

  const QuizMode({required this.title, required this.subtitle});
}
