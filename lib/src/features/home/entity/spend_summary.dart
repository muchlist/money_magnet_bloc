import 'package:freezed_annotation/freezed_annotation.dart';

part 'spend_summary.freezed.dart';

@freezed
class SpendSummary with _$SpendSummary {
  const SpendSummary._();
  const factory SpendSummary({
    required String mode,
    required String totalIncome,
    required String totalOutcome,
    required String totalNeed,
    required String totalLike,
    required String totalWant,
  }) = _SpendSummary;
}
