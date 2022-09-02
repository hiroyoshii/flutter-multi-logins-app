import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_desktop/firebase_auth_desktop.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
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
    if (kIsWeb) {
      return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: _login,
      );
    }
    if (Platform.isWindows) {
      return StreamBuilder<UserPlatform?>(
        stream: FirebaseAuthDesktop.instance.authStateChanges(),
        builder: _login,
      );
    }
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: _login,
    );
  }

  Widget _login(BuildContext contexnt, AsyncSnapshot<dynamic> snapshot) {
    if (snapshot.hasData) {
      // ユーザーがサインインしている場合
      return const Scaffold(
        body: Center(child: Text("Login Succeeded")),
      );
    } else {
      // ユーザーがサインインしてない場合
      return const SignInScreen(
        providerConfigs: [
          // 使用したい認証方法をここに追加する
          EmailProviderConfiguration(),
          GoogleProviderConfiguration(
            clientId: '',
          ),
        ],
      );
    }
  }
}
