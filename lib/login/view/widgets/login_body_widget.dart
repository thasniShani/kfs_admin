import 'package:flutter/material.dart';
import 'package:kfs_admin/dashboard/dashboard.dart';

class LoginBodyWidget extends StatelessWidget {
  LoginBodyWidget({super.key});
  final _user = TextEditingController();
  final _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('K F S'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/car.jpeg'),
                fit: BoxFit.cover,
              ),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _user,
                    decoration: const InputDecoration(
                      hintText: 'UserName',
                    ),
                  ),
                  TextField(
                    controller: _pass,
                    decoration: const InputDecoration(
                      fillColor: Colors.blueGrey,
                      hintText: 'Password',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashBoard(),
                        ),
                      );
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
