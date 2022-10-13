import 'package:flutter/material.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset('assets/images/worker.jpeg'),
                    ),
                    const Text('Workers'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        width: 190,
                        child: Image.asset('assets/images/service.jpg'),
                      ),
                      const Text('Services'),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 250,
                        width: 190,
                        child: Image.asset(
                          'assets/images/rqst.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const Text('Requests'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 190,
                          child: Image.asset(
                            'assets/images/complete.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('Completed Tasks'),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 250,
                        width: 190,
                        child: Image.asset('assets/images/offr.jpg'),
                      ),
                      const Text('offers')
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 250,
                          width: 190,
                          child: Image.asset(
                            'assets/images/fdbk.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      const Text('feedbacks'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Stack(
            children: [
              Container(
                height: 250,
                width: 190,
                child: Image.asset(
                  'assets/images/paymnt.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              const Text('payments'),
            ],
          ),
        )
      ],
    );
  }
}
