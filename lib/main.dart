import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_magnet_bloc/general_observer.dart';
import 'package:money_magnet_bloc/src/app.dart';
import 'package:money_magnet_bloc/src/config/config.dart';
import 'package:money_magnet_bloc/src/features/splash/presentation/spash_screen.dart';
import 'package:money_magnet_bloc/src/routes/app_router.dart';
import 'package:money_magnet_bloc/src/service_locator/service_locator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<void> _initialization;
  final approuter = AppRouter();

  @override
  void initState() {
    super.initState();
    _initialization = initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: FutureBuilder(
        future: _initialization,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            // build App after all dependency completed
            return App(appRouter: approuter);
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
