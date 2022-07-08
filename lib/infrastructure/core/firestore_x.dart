import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentSnapshot> getUser(String uid) async {
    return getIt<FirebaseFirestore>().collection('user').doc(uid).get();
  }

  Future<void> setUser(UserModel userModel) async {
    await getIt<FirebaseFirestore>().collection('user').doc(userModel.uid).set(userModel.toJson());
  }

  Future<void> addApartmentToUser(String userId, String apartmentId) async {
    await getIt<FirebaseFirestore>().collection('user').doc(userId).update({
      'ownedApartments': FieldValue.arrayUnion([apartmentId])
    });
  }

  Future<void> updateUser(UserModel userModel) async {
    await getIt<FirebaseFirestore>()
        .collection('user')
        .doc(userModel.uid)
        .update(userModel.toJson());
  }

  DocumentReference<Map<String, dynamic>> apartment(String apartmentId) {
    return getIt<FirebaseFirestore>().collection('apartment').doc(apartmentId);
  }

  DocumentReference<Map<String, dynamic>> getRequestReference(String ownerId, String uid) {
    return getIt<FirebaseFirestore>()
        .collection('user')
        .doc(ownerId)
        .collection('requests')
        .doc(uid);
  }

  DocumentReference<Map<String, dynamic>> productDirectory({
    required String apartmentId,
    required String productId,
  }) {
    return getIt<FirebaseFirestore>()
        .collection('apartment')
        .doc(apartmentId)
        .collection('expenses')
        .doc(productId);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> apartmentExpenses({
    required String apartmentId,
    required DateTime date,
  }) {
    Timestamp startDate = Timestamp.fromDate(DateTime(date.year, date.month));
    Timestamp endDate = Timestamp.fromDate(DateTime(date.year, date.month + 1));
    return getIt<FirebaseFirestore>()
        .collection('apartment')
        .doc(apartmentId)
        .collection('expenses')
        .where('date', isGreaterThanOrEqualTo: startDate, isLessThan: endDate)
        .snapshots();
  }
}
