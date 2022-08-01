import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/firebase_options.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/core/my_app.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await MobileAds.instance.initialize();
  await configurInjection(Environment.prod);
  runApp(MyApp());
}
