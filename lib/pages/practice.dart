import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  child: InkWell(
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text('Word'),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'word');
                    },
                  ),
                ),
                Card(
                  child: InkWell(
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text('Sentence'),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'sentence');
                    },
                  ),
                ),
                Card(
                  child: InkWell(
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text('Article'),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'article');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
