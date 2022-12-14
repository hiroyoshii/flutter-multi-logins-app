import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:logins_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyLoginApp());
}

class MyLoginApp extends StatelessWidget {
  const MyLoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login app',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: _login,
    );
  }

  Widget _login(BuildContext contexnt, AsyncSnapshot<User?> snapshot) {
    if (snapshot.hasData) {
      return const Scaffold(
        body: Center(child: Text("Login Succeeded")),
      );
    } else {
      return const SignInScreen(
        providerConfigs: [
          EmailProviderConfiguration(),
          GoogleProviderConfiguration(
            clientId:
                '760455727775-rfsvps5v0g1hc4vn0o6aiaaifncqtvpq.apps.googleusercontent.com',
          ),
        ],
      );
    }
  }
}
