import 'package:flutter/material.dart';

class Study extends StatefulWidget {
  const Study({Key? key}) : super(key: key);

  @override
  State<Study> createState() => _StudyState();
}

class _StudyState extends State<Study> {
  final fc = FocusNode();

  @override
  void initState() {
    super.initState();
  }

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
                        child: Text('Free Mode'),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'freeMode');
                    },
                  ),
                ),
                Card(
                  child: InkWell(
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text('Alphabet'),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'alphabet');
                    },
                  ),
                ),
                Card(
                  child: InkWell(
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text('Number'),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'number');
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
