import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: Restoform(),
  ));
}

// android/build.gradle
// classpath 'com.google.gms:google-services:4.3.15'
// android/app/build.gradle
// Apply plugin : ‘com.google.gms:google-services:4.3.15’
// C:\Users\ishik>cd C:\Users\ishik\StudioProjects\hello
// C:\Users\ishik\StudioProjects\hello>dart pub global activate flutterfire_cli
// C:\Users\ishik\StudioProjects\hello>flutterfire configure --project=viva-map10
// project/ pubspec.yml
// dependencies:
// firebase_database: any
// cloud_firestore: any
// > pubget
// >get dependencies
// Firebase console
// Build / Firebase database
// Create database > start in test mode

class Restoform extends StatefulWidget {
  const Restoform({Key? key}) : super(key: key);
  @override
  State<Restoform> createState() => _RestoformState();
}

class _RestoformState extends State<Restoform> {
  final formkey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _phone;
  late String _guests;
  late String _time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurant form"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Name",
                icon: Icon(Icons.person),
                hintText: "Enter your name",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your name";
                }
              },
              onSaved: (value) {
                _name = value!;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                icon: Icon(Icons.alternate_email),
                hintText: "Enter your email",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your email";
                }
              },
              onSaved: (value) {
                _email = value!;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Phone number",
                icon: Icon(Icons.phone),
                hintText: "Enter your phone number",
              ),
              onSaved: (value) {
                _phone = value!;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Number of guests",
                icon: Icon(Icons.people_alt),
                hintText: "Enter number of guests",
              ),
              onSaved: (value) {
                _guests = value!;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Time",
                icon: Icon(Icons.timer),
                hintText: "Enter time of arrival",
              ),
              onSaved: (value) {
                _time = value!;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton.icon(
      onPressed: () {
        if (formkey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Registration done successfully")));
          formkey.currentState!.save();
          FirebaseFirestore.instance
              .collection("Registrations")
              .add({
            'Name': _name,
            'Email': _email,
            'Phone': _phone,
            'Guests': _guests,
            'Time': _time,
          })
          // ignore: avoid_print
              .then((value) => print("Submitted successfully"))
          // ignore: avoid_print
              .catchError((error) => print("$error"));
        }
      },
      icon: const Icon(Icons.send),
      label: const Text("Submit"),
    );
  }
}
