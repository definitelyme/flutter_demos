import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_to_text_provider.dart';

part 'stt_cubit.freezed.dart';

part 'stt_state.dart';

part 'stt_event.dart';

@Injectable()
class SttCubit extends Bloc<SttEvent, SttState> {
  final DataConnectionChecker _connectionChecker;
  SpeechToTextProvider _speechProvider;
  bool _isInitialized = false;

  SttCubit(this._connectionChecker) : super(SttState.init());

  @override
  Stream<SttState> mapEventToState(SttEvent event) async* {
    yield* event.map(
      initialize: (e) async* {
        yield* _mapInitialize(e);
      },
      listen: (e) async* {
        yield* _mapListen(e);
      },
      stopListening: (e) async* {
        yield* _mapStopListening(e);
      },
    );
  }

  Stream<SttState> _mapInitialize(_InitializeSTT _) async* {
    if (!_isInitialized) {
      if (!(await _connectionChecker.hasConnection)) {
        yield state.copyWith(status: left("Poor or Bad Internet connection!"));
        return;
      }

      _isInitialized = await state.speech.initialize(
        debugLogging: true,
        // onError: (val) => emit(state.copyWith(status: left(val?.errorMsg))),
        // onStatus: (val) => emit(state.copyWith(status: left(val))),
        onError: (val) => print(val?.errorMsg),
        onStatus: (val) => print(val),
      );

      yield state.copyWith(isInitialized: _isInitialized);
    }
  }

  Stream<SttState> _mapListen(_AddListener _) async* {
    print("LogTAG: isInitialized BEFORE ===> State: ${state.isInitialized}, Param: $_isInitialized");
    print("LogTAG: isListening BEFORE ===> ${state.isListening}");

    print("=====================================================");

    if (_isInitialized && !state.isListening) {
      print("Started Lisening");
      if (!(await _connectionChecker.hasConnection)) {
        yield state.copyWith(status: left("Poor or Bad Internet connection!"));
        return;
      }

      await state.speech.listen(
        onResult: (val) => _onResult(val),
        listenMode: ListenMode.dictation,
        pauseFor: const Duration(seconds: 10),
        cancelOnError: false,
        listenFor: const Duration(hours: 1),
      );
      yield state.copyWith(isListening: true);
    }

    // print("LogTAG: isInitialized AFTER ===> ${state.isInitialized}");
    // print("LogTAG: isListening AFTER ===> ${state.isListening}");
    //
    // print("=====================================================");
  }

  Stream<SttState> _mapStopListening(_RemoveListener _) async* {
    print("LogTAG: isInitialized BEFORE ===> State: ${state.isInitialized}, Param: $_isInitialized");
    print("LogTAG: isListening BEFORE ===> ${state.isListening}");

    print("=====================================================");

    if (_isInitialized) {
      await state.speech.stop();
      yield state.copyWith(isListening: false);
    }

    // print("LogTAG: isInitialized AFTER ===> ${state.isInitialized}");
    // print("LogTAG: isListening AFTER ===> ${state.isListening}");
    //
    // print("=====================================================");
  }

  Stream<SttState> _onResult(SpeechRecognitionResult result) async* {
    yield state.copyWith(text: result.recognizedWords);
    if (result.hasConfidenceRating && result.confidence > 0) {
      yield state.copyWith(confidence: result.confidence);
    }
  }
}
