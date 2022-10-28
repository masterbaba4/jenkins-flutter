import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Image.asset(
                      'assets/images/a.jpg',
                      height: 120,
                      width: 120,
                    ),
                    const Text('Teddy',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    // Row(children: [
                    const Text('\n\n\n RS-50000',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),

                    // ]),
                    // Row(children: [
                    const Text('*****',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                    // ]),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/b.jpg',
                      height: 120,
                      width: 120,
                    ),
                    const Text('Teddy',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    // Row(children: [
                    const Text('\n\n\n RS -40000',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),

                    // ]),
                    // Row(children: [
                    const Text('*****',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                    // ]),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/a.jpg',
                      height: 120,
                      width: 120,
                    ),
                    const Text('Teddy',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    // Row(children: [
                    const Text('\n\n\n RS -50000',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),

                    // ]),
                    // Row(children: [
                    const Text('*****',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                    // ]),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 60)),
                Row(
                  children: [
                    const Text('*****',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.red))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
