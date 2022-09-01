import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:logins_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ユーザーがサインインしている場合
          return Scaffold(
            body: Center(child: Text("Login Succeeded")),
          );
        } else {
          // ユーザーがサインインしてない場合
          return const SignInScreen(
            providerConfigs: [
              // 使用したい認証方法をここに追加する
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(
                clientId:
                    '760455727775-rfsvps5v0g1hc4vn0o6aiaaifncqtvpq.apps.googleusercontent.com',
              ),
            ],
          );
        }
      },
    );
  }
}
