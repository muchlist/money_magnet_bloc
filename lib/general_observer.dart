import 'package:bloc/bloc.dart';
import 'package:money_magnet_bloc/src/common/dev/logger.dart';

class MyObserver extends BlocObserver {
  final _log = AppLogger();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _log.d("$bloc => $change");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _log.e("$bloc => $error");
    _log.e("$bloc => $stackTrace");
  }
}
