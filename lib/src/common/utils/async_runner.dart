/// Fungsi ini mengeksekusi tugas asinkron dengan menunda eksekusinya
/// menggunakan `Future.delayed(Duration.zero)`.
///
/// Contoh penggunaan:
/// ```dart
/// runAsync(() {
///   context.read<AppBloc>().add(SomeEvent);
/// });
/// ```
void runAsync(void Function() task) {
  Future.delayed(Duration.zero, task);
}
