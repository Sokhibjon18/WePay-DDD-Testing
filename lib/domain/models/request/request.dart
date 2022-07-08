import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
abstract class RequestToJoin implements _$RequestToJoin {
  const RequestToJoin._();

  const factory RequestToJoin({
    required String userId,
    required String uid,
    required String email,
    required String apartmentId,
    required String apartmentName,
  }) = _RequestToJoin;

  factory RequestToJoin.fromJson(Map<String, dynamic> json) => _$RequestToJoinFromJson(json);
}

enum RequestOperations { rejected, added, sent }
