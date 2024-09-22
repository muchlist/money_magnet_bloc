import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String toCurrencyFormat() {
    NumberFormat formatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: '',
      decimalDigits: 2,
    );
    return formatter.format(this);
  }

  String toThousandFormat() {
    NumberFormat formatter = NumberFormat('#,##0.00', 'id_ID');
    return formatter.format(this);
  }
}

extension DoubleFormatting on double {
  String toViewFormat() {
    // Jika nilai adalah bilangan bulat (misalnya 10.0), maka tampilkan tanpa desimal
    if (this == roundToDouble()) {
      return toStringAsFixed(0);
    } else {
      // Jika tidak, tampilkan dengan satu desimal
      return toStringAsFixed(2);
    }
  }

  double toAcceptableDigitComma() {
    if (this == 0) {
      return 0;
    }
    return double.parse(toViewFormat());
  }
}

extension DoubleNullFormatting on double? {
  double? toAcceptableDigitComma() {
    if (this == null) {
      return null;
    }
    if (this == 0) {
      return 0;
    }
    return double.parse(this!.toViewFormat());
  }
}
