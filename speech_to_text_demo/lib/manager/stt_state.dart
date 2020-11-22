part of 'stt_cubit.dart';

@freezed
@immutable
abstract class SttState implements _$SttState {
  @protected
  const SttState._();

  static Map<String, HighlightedWord> highlights = {
    'flutter': HighlightedWord(
      onTap: () {},
      textStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
    ),
    'voice': HighlightedWord(
      onTap: () {},
      textStyle: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
    ),
    'brendan': HighlightedWord(
      onTap: () {},
      textStyle: const TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
    ),
    'feedback': HighlightedWord(
      onTap: () {},
      textStyle: const TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
    ),
    'speech to text': HighlightedWord(
      onTap: () {},
      textStyle: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
    ),
  };

  const factory SttState({
    @required SpeechToText speech,
    @Default("Press the button and start speaking") String text,
    @Default(false) bool isListening,
    @Default(false) bool isInitialized,
    @Default(1.0) double confidence,
    @nullable Either<String, Unit> status,
  }) = _SttState;

  factory SttState.init() => SttState(speech: SpeechToText());
}
