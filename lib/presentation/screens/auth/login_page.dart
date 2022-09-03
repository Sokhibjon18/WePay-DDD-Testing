import 'package:flutter/material.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/screens/auth/forms/login_form.dart';
import 'package:we_pay/presentation/screens/auth/widget/header.dart';
import 'package:we_pay/presentation/screens/auth/widget/login_btns.dart';
import 'package:we_pay/presentation/core/functions.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusBarColor(blue, Brightness.light);
    return Scaffold(
      backgroundColor: white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                authHeader('Salom, hush kelibsiz'),
                const LoginFrom(),
                const SizedBox(height: 32),
                const LoginBtns(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
