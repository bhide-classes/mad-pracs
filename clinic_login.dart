import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Registration Form',
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login form"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "Enter your name",
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                border: OutlineInputBorder(),
                icon: Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Login successful")));
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
