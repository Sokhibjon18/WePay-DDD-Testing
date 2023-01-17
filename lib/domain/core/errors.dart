import 'value_failure.dart';

class UnexpectedErrorValue extends Error {
  UnexpectedErrorValue(this.valueFailure);

  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Termineting.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
