import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/core/my_app.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  configurInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(MyApp());
}
