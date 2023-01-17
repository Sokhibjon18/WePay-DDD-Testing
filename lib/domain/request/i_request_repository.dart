import 'package:dartz/dartz.dart';
import '../models/apartment/apartment.dart';
import '../models/request/request.dart';
import 'request_failure.dart';

abstract class IRequestRepository {
  Future<Either<RequestFailure, RequestOperations>> sendRequestToJoin(
    String userId,
    PublicExpense publicExpense,
  );
  Future<Either<RequestFailure, RequestOperations>> acceptRequest(RequestToJoin request);
  Future<Either<RequestFailure, RequestOperations>> rejectRequest(String requestId);
}
