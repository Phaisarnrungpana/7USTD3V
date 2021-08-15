import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justdev/pages/login/login_bloc.dart';
import 'package:justdev/pages/login/login_state.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailTextFieldController = TextEditingController();
  TextEditingController _passwordTextFieldController = TextEditingController();

  void _stateListener(LoginStateBase state) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginStateBase>(
        listener: (context, state) => _stateListener(state),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            key: Key('Email'),
            controller: _emailTextFieldController,
            decoration: InputDecoration(hintText: 'Email'),
          ),
          SizedBox(height: 50.0),
          TextField(
            key: Key('Password'),
            controller: _passwordTextFieldController,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          SizedBox(height: 50.0),
          SizedBox(
            width: double.infinity,
            child: AbsorbPointer(
              key: Key('LoginBtnAbsorbPointer'),
              absorbing: true,
              child: ElevatedButton(onPressed: () {}, child: Text('Login')),
            ),
          )
        ],
      ),
    );
  }
}
