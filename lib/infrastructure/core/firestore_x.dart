import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/models/user_model/user_model.dart';
import '../../injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentSnapshot<Map<String, dynamic>>> getUser(String uid) async {
    return await getIt<FirebaseFirestore>().collection('user').doc(uid).get();
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

  Future<String> getUserName(String userId) async {
    return await getIt<FirebaseFirestore>()
        .collection('user')
        .doc(userId)
        .get()
        .then((value) => value.data()?['name']);
  }

  Future<String> getUserNotificationToken(String userId) async {
    return await getIt<FirebaseFirestore>()
        .collection('user')
        .doc(userId)
        .get()
        .then((value) => value.data()?['notificationToken']);
  }

  Future<int> getUserColor(String userId) async {
    return await getIt<FirebaseFirestore>()
        .collection('user')
        .doc(userId)
        .get()
        .then((value) => value.data()?['color']);
  }

  DocumentReference<Map<String, dynamic>> publicExpense(String apartmentId) {
    return getIt<FirebaseFirestore>().collection('expensesInfo').doc(apartmentId);
  }

  DocumentReference<Map<String, dynamic>> getRequestReference(
      String ownerId, String publicExpenseId) {
    return getIt<FirebaseFirestore>()
        .collection('user')
        .doc(ownerId)
        .collection('requests')
        .doc(publicExpenseId);
  }

  DocumentReference<Map<String, dynamic>> productDirectory({
    required String publicExpenseId,
    required String productId,
  }) {
    return getIt<FirebaseFirestore>()
        .collection('expensesInfo')
        .doc(publicExpenseId)
        .collection('expenses')
        .doc(productId);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> apartmentCurrentMonthExpences({
    required String apartmentId,
  }) {
    return getIt<FirebaseFirestore>()
        .collection('expensesInfo')
        .doc(apartmentId)
        .collection('expenses')
        .orderBy('date', descending: true)
        .get();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> publicExpenses({required String publicExpenseId}) {
    return getIt<FirebaseFirestore>()
        .collection('expensesInfo')
        .doc(publicExpenseId)
        .collection('expenses')
        .orderBy('date', descending: true)
        .snapshots();
  }

  Future<bool> doesUserRequested(String userId, String publicExpenseId) async {
    return await getIt<FirebaseFirestore>()
        .collection('user')
        .doc(userId)
        .collection('requests')
        .doc(publicExpenseId)
        .get()
        .then((value) => value.exists);
  }
}
