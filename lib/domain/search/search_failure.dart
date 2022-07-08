import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_failure.freezed.dart';

@freezed
abstract class SearchFailure with _$SearchFailure {
  const factory SearchFailure.server({String? errorMessage}) = ServerFailure;
  const factory SearchFailure.unexpected(String errorMessage) = Unexpected;
  const factory SearchFailure.userAlreadyAdded() = UserAlreadyAdded;
  const factory SearchFailure.notFound() = NotFound;
}
