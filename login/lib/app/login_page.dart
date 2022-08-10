import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordLocker = true;
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test login page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login', style: TextStyle(fontSize: 50)),
            CustomTextField(
              controller: _emailTextController,
              hintText: 'email',
              labelText: 'Email',
              obscureText: false,
            ),
            CustomTextField(
              controller: _passwordTextController,
              hintText: 'senha',
              labelText: 'Senha',
              obscureText: passwordLocker,
              suffixIcon: passwordLocker
                  ? Icons.lock
                  : Icons.no_encryption_gmailerrorred_outlined,
              onSuffixIconTap: () {
                setState(() {
                  passwordLocker = !passwordLocker;
                });
              },
            ),
            const SizedBox(height: 40),
            CustomSubmitButton(
              onTap: () => print(
                  'Email: ${_emailTextController.text}\n Password: ${_passwordTextController.text}'),
              color: Colors.purpleAccent,
              height: 270,
              width: 50,
              text: 'Logar',
              textStyle: const TextStyle(fontSize: 20, color: Colors.white),
              boxBorder: Border.all(color: Colors.purpleAccent),
              borderRadiusGeometry:
                  const BorderRadius.all(Radius.circular(5.0)),
            ),
          ],
        ),
      ),
    );
  }
}
