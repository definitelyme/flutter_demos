import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:speech_to_text/speech_to_text.dart';

@module
abstract class Modules {
  @lazySingleton
  SpeechToText get speechToText => SpeechToText();

  @lazySingleton
  DataConnectionChecker get conn => DataConnectionChecker();
}
