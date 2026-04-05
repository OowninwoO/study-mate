// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_set_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QuizSetList)
const quizSetListProvider = QuizSetListProvider._();

final class QuizSetListProvider
    extends $AsyncNotifierProvider<QuizSetList, List<QuizSetModel>> {
  const QuizSetListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'quizSetListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$quizSetListHash();

  @$internal
  @override
  QuizSetList create() => QuizSetList();
}

String _$quizSetListHash() => r'409168e29631e7ae99801bc9d085c17c0ae1cb20';

abstract class _$QuizSetList extends $AsyncNotifier<List<QuizSetModel>> {
  FutureOr<List<QuizSetModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<QuizSetModel>>, List<QuizSetModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<QuizSetModel>>, List<QuizSetModel>>,
              AsyncValue<List<QuizSetModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
