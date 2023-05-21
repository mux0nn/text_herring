import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechText extends StatefulWidget {
  const SpeechText({super.key});

  @override
  State<SpeechText> createState() => _SpeechTextState();
}

class _SpeechTextState extends State<SpeechText> {
  SpeechToText speechToText = SpeechToText();

  bool isListening = false;
  var text = "Tap to speak";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () async {
          setState(() {
            isListening = !isListening;
          });

          if (isListening) {
            print("Listening...");
            var available = await speechToText.initialize();
            print(available);
            if (available) {
              print("Listening...");
              setState(() {
                speechToText.listen(onResult: (result) {
                  setState(() {
                    text = result.recognizedWords;
                  });
                });
              });
            }
          } else {
            print("Stopped listening.");
            speechToText.stop();
          }
        },
        child: CircleAvatar(
          backgroundColor: primaryColor,
          radius: 35,
          child: Icon(
            isListening ? Icons.mic : Icons.mic_off,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: secondaryColor),
        ),
      ),
    );
  }
}
