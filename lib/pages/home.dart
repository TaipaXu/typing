import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcoming to Typing',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  child: InkWell(
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                          'Study',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'study');
                    },
                  ),
                ),
                Card(
                  child: InkWell(
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                          'Practice',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'practice');
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
