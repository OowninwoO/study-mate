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
    extends $NotifierProvider<QuizSetList, List<QuizSetModel>> {
  const QuizSetListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'quizSetListProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$quizSetListHash();

  @$internal
  @override
  QuizSetList create() => QuizSetList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<QuizSetModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<QuizSetModel>>(value),
    );
  }
}

String _$quizSetListHash() => r'0ce6188c0f56368367091b37c1527dd9bd15e1e0';

abstract class _$QuizSetList extends $Notifier<List<QuizSetModel>> {
  List<QuizSetModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<QuizSetModel>, List<QuizSetModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<QuizSetModel>, List<QuizSetModel>>,
              List<QuizSetModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
