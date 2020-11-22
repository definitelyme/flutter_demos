import 'package:auto_size_text/auto_size_text.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text_demo/manager/stt_cubit.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HighlightMap highlightMap = HighlightMap(SttState.highlights);

  @override
  void initState() {
    context.read<SttCubit>().add(SttEvent.initialize());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<SttCubit, SttState>(
          builder: (context, state) => Text("Speech To Text Demo, "
              "Confidence: ${(context.watch<SttCubit>().state.confidence * 100).toStringAsFixed(1)}%"),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: BlocConsumer<SttCubit, SttState>(
          listener: (context, state) {
            state.status?.fold(
              (error) => Flushbar(
                duration: const Duration(seconds: 5),
                icon: Icon(Icons.error, color: Colors.red),
                messageText: AutoSizeText(error),
                borderRadius: 8,
                dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                margin: EdgeInsets.all(8),
                flushbarPosition: FlushbarPosition.TOP,
                shouldIconPulse: true,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              (_) => null,
            );
          },
          builder: (context, state) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: TextHighlight(
                text: context.watch<SttCubit>().state.text.isNotEmpty ? context.watch<SttCubit>().state.text : "...",
                words: highlightMap.getMap,
                textAlign: TextAlign.justify,
                textStyle: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BlocBuilder<SttCubit, SttState>(
        builder: (context, state) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AvatarGlow(
              animate: context.bloc<SttCubit>().state.isListening,
              glowColor: Theme.of(context).primaryColor,
              endRadius: 75.0,
              duration: const Duration(milliseconds: 2000),
              repeatPauseDuration: const Duration(milliseconds: 100),
              repeat: true,
              showTwoGlows: true,
              child: FloatingActionButton(
                onPressed: () => context.read<SttCubit>().add(SttEvent.listen()),
                tooltip: 'Start Listening',
                child: Icon(Icons.mic),
              ),
            ),
            //
            SizedBox(width: 30),
            //
            FloatingActionButton(
              onPressed: () => context.read<SttCubit>().add(SttEvent.stopListening()),
              tooltip: 'Stop Listening',
              child: Icon(Icons.mic_none),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
