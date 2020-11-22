import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:speech_to_text_demo/manager/stt_cubit.dart';
import 'package:speech_to_text_demo/playground/sample.dart';
import 'package:speech_to_text_demo/screens/home_screen.dart';
import 'package:speech_to_text_demo/services/locator.dart';

void main() async {
  await locator(Environment.prod);
  // ProviderDemoApp() From Code Snippet -
  // https://github.com/csdcorp/speech_to_text/blob/main/speech_to_text/example/lib/provider_example.dart
  runApp(ProviderDemoApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STT Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<SttCubit>()),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
