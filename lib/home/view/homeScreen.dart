import 'package:flutter/material.dart';
import 'package:kfs_admin/home/homescreen.dart';
import 'package:kfs_admin/services/view/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('KFS'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 4 / 5,
            ),
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Services(),
                    ),
                  );
                },
                child: HomeBodyWidget(
                  text: 'Services',
                  image: 'assets/images/services.jpeg',
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: ((context) => Worker()),
                  //   ),
                  // );
                },
                child: HomeBodyWidget(
                  text: 'Workers',
                  image: 'assets/images/worker.jpeg',
                ),
              ),
              HomeBodyWidget(
                text: 'Requests',
                image: 'assets/images/rqst.webp',
              ),
              HomeBodyWidget(
                text: 'Completed Tasks',
                image: 'assets/images/complete.jpeg',
              ),
              HomeBodyWidget(
                text: 'Feedbacks',
                image: 'assets/images/fdbk.jpeg',
              ),
              HomeBodyWidget(
                text: 'Payments',
                image: 'assets/images/paymnt.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
