import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_magnet_bloc/general_observer.dart';
import 'package:money_magnet_bloc/src/app.dart';
import 'package:money_magnet_bloc/src/service_locator/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  Bloc.observer = MyObserver();

  runApp(const App());
}
