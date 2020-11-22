// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../manager/stt_cubit.dart';
import 'modules.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final modules = _$Modules();
  gh.lazySingleton<DataConnectionChecker>(() => modules.conn);
  gh.lazySingleton<SpeechToText>(() => modules.speechToText);
  gh.factory<SttCubit>(() => SttCubit(get<DataConnectionChecker>()));
  return get;
}

class _$Modules extends Modules {}
