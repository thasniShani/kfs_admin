import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfs_admin/dashboard/dashboard.dart';
import 'package:kfs_admin/login/bloc/login_bloc.dart';

class LoginBodyWidget extends StatelessWidget {
  LoginBodyWidget({super.key});
  final _user = TextEditingController();
  final _pass = TextEditingController();
  final auth_bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => auth_bloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DashBoard()),
            );
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('LoginFailed')));
          }
        },
        child: Scaffold(
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
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        controller: _pass,
                        decoration: const InputDecoration(
                          fillColor: Colors.blueGrey,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          auth_bloc.add(
                            AdminLoginEvent(
                              email: _user.text,
                              password: _pass.text,
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
        ),
      ),
    );
  }
}
