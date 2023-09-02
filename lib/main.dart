import 'package:flutter/material.dart';
import '/pages/splash.dart' as page;
import '/pages/home.dart' as page;
import '/pages/study.dart' as page;
import '/pages/freeMode.dart' as page;
import '/pages/alphabet.dart' as page;
import '/pages/number.dart' as page;
import '/pages/symbol.dart' as page;
import '/pages/practice.dart' as page;
import '/pages/word.dart' as page;
import '/pages/sentence.dart' as page;
import '/pages/article.dart' as page;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Many Radios',
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const page.Splash(),
        'home': (context) => const page.Home(),
        'study': (context) => const page.Study(),
        'freeMode': (context) => const page.FreeMode(),
        'alphabet': (context) => const page.Alphabet(),
        'number': (context) => const page.Number(),
        'symbol': (context) => const page.Symbol(),
        'practice': (context) => const page.Practice(),
        'word': (context) => const page.Word(),
        'sentence': (context) => const page.Sentence(),
        'article': (context) => const page.Article(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
