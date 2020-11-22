// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stt_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SttStateTearOff {
  const _$SttStateTearOff();

// ignore: unused_element
  _SttState call(
      {@required SpeechToText speech,
      String text = 'Press the button and start speaking',
      bool isListening = false,
      bool isInitialized = false,
      double confidence = 1.0,
      @nullable Either<String, Unit> status}) {
    return _SttState(
      speech: speech,
      text: text,
      isListening: isListening,
      isInitialized: isInitialized,
      confidence: confidence,
      status: status,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SttState = _$SttStateTearOff();

/// @nodoc
mixin _$SttState {
  SpeechToText get speech;
  String get text;
  bool get isListening;
  bool get isInitialized;
  double get confidence;
  @nullable
  Either<String, Unit> get status;

  $SttStateCopyWith<SttState> get copyWith;
}

/// @nodoc
abstract class $SttStateCopyWith<$Res> {
  factory $SttStateCopyWith(SttState value, $Res Function(SttState) then) =
      _$SttStateCopyWithImpl<$Res>;
  $Res call(
      {SpeechToText speech,
      String text,
      bool isListening,
      bool isInitialized,
      double confidence,
      @nullable Either<String, Unit> status});
}

/// @nodoc
class _$SttStateCopyWithImpl<$Res> implements $SttStateCopyWith<$Res> {
  _$SttStateCopyWithImpl(this._value, this._then);

  final SttState _value;
  // ignore: unused_field
  final $Res Function(SttState) _then;

  @override
  $Res call({
    Object speech = freezed,
    Object text = freezed,
    Object isListening = freezed,
    Object isInitialized = freezed,
    Object confidence = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      speech: speech == freezed ? _value.speech : speech as SpeechToText,
      text: text == freezed ? _value.text : text as String,
      isListening:
          isListening == freezed ? _value.isListening : isListening as bool,
      isInitialized: isInitialized == freezed
          ? _value.isInitialized
          : isInitialized as bool,
      confidence:
          confidence == freezed ? _value.confidence : confidence as double,
      status:
          status == freezed ? _value.status : status as Either<String, Unit>,
    ));
  }
}

/// @nodoc
abstract class _$SttStateCopyWith<$Res> implements $SttStateCopyWith<$Res> {
  factory _$SttStateCopyWith(_SttState value, $Res Function(_SttState) then) =
      __$SttStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SpeechToText speech,
      String text,
      bool isListening,
      bool isInitialized,
      double confidence,
      @nullable Either<String, Unit> status});
}

/// @nodoc
class __$SttStateCopyWithImpl<$Res> extends _$SttStateCopyWithImpl<$Res>
    implements _$SttStateCopyWith<$Res> {
  __$SttStateCopyWithImpl(_SttState _value, $Res Function(_SttState) _then)
      : super(_value, (v) => _then(v as _SttState));

  @override
  _SttState get _value => super._value as _SttState;

  @override
  $Res call({
    Object speech = freezed,
    Object text = freezed,
    Object isListening = freezed,
    Object isInitialized = freezed,
    Object confidence = freezed,
    Object status = freezed,
  }) {
    return _then(_SttState(
      speech: speech == freezed ? _value.speech : speech as SpeechToText,
      text: text == freezed ? _value.text : text as String,
      isListening:
          isListening == freezed ? _value.isListening : isListening as bool,
      isInitialized: isInitialized == freezed
          ? _value.isInitialized
          : isInitialized as bool,
      confidence:
          confidence == freezed ? _value.confidence : confidence as double,
      status:
          status == freezed ? _value.status : status as Either<String, Unit>,
    ));
  }
}

/// @nodoc
class _$_SttState extends _SttState {
  const _$_SttState(
      {@required this.speech,
      this.text = 'Press the button and start speaking',
      this.isListening = false,
      this.isInitialized = false,
      this.confidence = 1.0,
      @nullable this.status})
      : assert(speech != null),
        assert(text != null),
        assert(isListening != null),
        assert(isInitialized != null),
        assert(confidence != null),
        super._();

  @override
  final SpeechToText speech;
  @JsonKey(defaultValue: 'Press the button and start speaking')
  @override
  final String text;
  @JsonKey(defaultValue: false)
  @override
  final bool isListening;
  @JsonKey(defaultValue: false)
  @override
  final bool isInitialized;
  @JsonKey(defaultValue: 1.0)
  @override
  final double confidence;
  @override
  @nullable
  final Either<String, Unit> status;

  @override
  String toString() {
    return 'SttState(speech: $speech, text: $text, isListening: $isListening, isInitialized: $isInitialized, confidence: $confidence, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SttState &&
            (identical(other.speech, speech) ||
                const DeepCollectionEquality().equals(other.speech, speech)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.isListening, isListening) ||
                const DeepCollectionEquality()
                    .equals(other.isListening, isListening)) &&
            (identical(other.isInitialized, isInitialized) ||
                const DeepCollectionEquality()
                    .equals(other.isInitialized, isInitialized)) &&
            (identical(other.confidence, confidence) ||
                const DeepCollectionEquality()
                    .equals(other.confidence, confidence)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speech) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(isListening) ^
      const DeepCollectionEquality().hash(isInitialized) ^
      const DeepCollectionEquality().hash(confidence) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$SttStateCopyWith<_SttState> get copyWith =>
      __$SttStateCopyWithImpl<_SttState>(this, _$identity);
}

abstract class _SttState extends SttState {
  const _SttState._() : super._();
  const factory _SttState(
      {@required SpeechToText speech,
      String text,
      bool isListening,
      bool isInitialized,
      double confidence,
      @nullable Either<String, Unit> status}) = _$_SttState;

  @override
  SpeechToText get speech;
  @override
  String get text;
  @override
  bool get isListening;
  @override
  bool get isInitialized;
  @override
  double get confidence;
  @override
  @nullable
  Either<String, Unit> get status;
  @override
  _$SttStateCopyWith<_SttState> get copyWith;
}

/// @nodoc
class _$SttEventTearOff {
  const _$SttEventTearOff();

// ignore: unused_element
  _InitializeSTT initialize() {
    return const _InitializeSTT();
  }

// ignore: unused_element
  _AddListener listen() {
    return const _AddListener();
  }

// ignore: unused_element
  _RemoveListener stopListening() {
    return const _RemoveListener();
  }
}

/// @nodoc
// ignore: unused_element
const $SttEvent = _$SttEventTearOff();

/// @nodoc
mixin _$SttEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result listen(),
    @required Result stopListening(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result listen(),
    Result stopListening(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeSTT value),
    @required Result listen(_AddListener value),
    @required Result stopListening(_RemoveListener value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeSTT value),
    Result listen(_AddListener value),
    Result stopListening(_RemoveListener value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SttEventCopyWith<$Res> {
  factory $SttEventCopyWith(SttEvent value, $Res Function(SttEvent) then) =
      _$SttEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SttEventCopyWithImpl<$Res> implements $SttEventCopyWith<$Res> {
  _$SttEventCopyWithImpl(this._value, this._then);

  final SttEvent _value;
  // ignore: unused_field
  final $Res Function(SttEvent) _then;
}

/// @nodoc
abstract class _$InitializeSTTCopyWith<$Res> {
  factory _$InitializeSTTCopyWith(
          _InitializeSTT value, $Res Function(_InitializeSTT) then) =
      __$InitializeSTTCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeSTTCopyWithImpl<$Res> extends _$SttEventCopyWithImpl<$Res>
    implements _$InitializeSTTCopyWith<$Res> {
  __$InitializeSTTCopyWithImpl(
      _InitializeSTT _value, $Res Function(_InitializeSTT) _then)
      : super(_value, (v) => _then(v as _InitializeSTT));

  @override
  _InitializeSTT get _value => super._value as _InitializeSTT;
}

/// @nodoc
class _$_InitializeSTT implements _InitializeSTT {
  const _$_InitializeSTT();

  @override
  String toString() {
    return 'SttEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitializeSTT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result listen(),
    @required Result stopListening(),
  }) {
    assert(initialize != null);
    assert(listen != null);
    assert(stopListening != null);
    return initialize();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result listen(),
    Result stopListening(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeSTT value),
    @required Result listen(_AddListener value),
    @required Result stopListening(_RemoveListener value),
  }) {
    assert(initialize != null);
    assert(listen != null);
    assert(stopListening != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeSTT value),
    Result listen(_AddListener value),
    Result stopListening(_RemoveListener value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeSTT implements SttEvent {
  const factory _InitializeSTT() = _$_InitializeSTT;
}

/// @nodoc
abstract class _$AddListenerCopyWith<$Res> {
  factory _$AddListenerCopyWith(
          _AddListener value, $Res Function(_AddListener) then) =
      __$AddListenerCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddListenerCopyWithImpl<$Res> extends _$SttEventCopyWithImpl<$Res>
    implements _$AddListenerCopyWith<$Res> {
  __$AddListenerCopyWithImpl(
      _AddListener _value, $Res Function(_AddListener) _then)
      : super(_value, (v) => _then(v as _AddListener));

  @override
  _AddListener get _value => super._value as _AddListener;
}

/// @nodoc
class _$_AddListener implements _AddListener {
  const _$_AddListener();

  @override
  String toString() {
    return 'SttEvent.listen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddListener);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result listen(),
    @required Result stopListening(),
  }) {
    assert(initialize != null);
    assert(listen != null);
    assert(stopListening != null);
    return listen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result listen(),
    Result stopListening(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listen != null) {
      return listen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeSTT value),
    @required Result listen(_AddListener value),
    @required Result stopListening(_RemoveListener value),
  }) {
    assert(initialize != null);
    assert(listen != null);
    assert(stopListening != null);
    return listen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeSTT value),
    Result listen(_AddListener value),
    Result stopListening(_RemoveListener value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listen != null) {
      return listen(this);
    }
    return orElse();
  }
}

abstract class _AddListener implements SttEvent {
  const factory _AddListener() = _$_AddListener;
}

/// @nodoc
abstract class _$RemoveListenerCopyWith<$Res> {
  factory _$RemoveListenerCopyWith(
          _RemoveListener value, $Res Function(_RemoveListener) then) =
      __$RemoveListenerCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemoveListenerCopyWithImpl<$Res> extends _$SttEventCopyWithImpl<$Res>
    implements _$RemoveListenerCopyWith<$Res> {
  __$RemoveListenerCopyWithImpl(
      _RemoveListener _value, $Res Function(_RemoveListener) _then)
      : super(_value, (v) => _then(v as _RemoveListener));

  @override
  _RemoveListener get _value => super._value as _RemoveListener;
}

/// @nodoc
class _$_RemoveListener implements _RemoveListener {
  const _$_RemoveListener();

  @override
  String toString() {
    return 'SttEvent.stopListening()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RemoveListener);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result listen(),
    @required Result stopListening(),
  }) {
    assert(initialize != null);
    assert(listen != null);
    assert(stopListening != null);
    return stopListening();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result listen(),
    Result stopListening(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopListening != null) {
      return stopListening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeSTT value),
    @required Result listen(_AddListener value),
    @required Result stopListening(_RemoveListener value),
  }) {
    assert(initialize != null);
    assert(listen != null);
    assert(stopListening != null);
    return stopListening(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeSTT value),
    Result listen(_AddListener value),
    Result stopListening(_RemoveListener value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopListening != null) {
      return stopListening(this);
    }
    return orElse();
  }
}

abstract class _RemoveListener implements SttEvent {
  const factory _RemoveListener() = _$_RemoveListener;
}
