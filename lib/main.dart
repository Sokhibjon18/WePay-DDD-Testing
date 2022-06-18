import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/core/my_app.dart';

void main(List<String> args) async {
  // learning git skills asd safsd
  WidgetsFlutterBinding.ensureInitialized();
  configurInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(MyApp());
}
