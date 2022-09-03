import 'package:flutter/material.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/screens/auth/forms/sign_up_form.dart';
import 'package:we_pay/presentation/screens/auth/widget/header.dart';
import 'package:we_pay/presentation/screens/auth/widget/sign_up_btns.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                authHeader('Yangi hisob ochish'),
                const SignUpForm(),
                const SizedBox(height: 32),
                const SignUpBtns(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
