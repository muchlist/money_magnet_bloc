import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_magnet_bloc/general_observer.dart';
import 'package:money_magnet_bloc/src/app.dart';
import 'package:money_magnet_bloc/src/config/config.dart';
import 'package:money_magnet_bloc/src/features/splash/presentation/spash_screen.dart';
import 'package:money_magnet_bloc/src/service_locator/service_locator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: FutureBuilder(
        future: initializeApp(), // initiate all dependency
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // if loading, show splash screen
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return App(); // build App after all dependency completed
          }
        },
      ),
    );
  }

  Future<void> initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EnvConfig.load();
    await setupServiceLocator();
    Bloc.observer = MyObserver();
    registerErrorHandlers();
  }
}

void registerErrorHandlers() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint(details.toString());
  };

  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint(error.toString());
    return true;
  };

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('An error occurred'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text(
            details.toString(),
          ),
        ),
      ),
    );
  };
}
