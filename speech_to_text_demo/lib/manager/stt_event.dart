part of 'stt_cubit.dart';

@freezed
@immutable
abstract class SttEvent with _$SttEvent{
   const factory SttEvent.initialize() = _InitializeSTT;

   const factory SttEvent.listen() = _AddListener;

   const factory SttEvent.stopListening() = _RemoveListener;
}
