import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/profile/profile_bloc.dart';
import 'package:we_pay/presentation/screens/utils/reusable_widgets.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({
    Key? key,
    required this.email,
    required this.name,
    required this.showErrorMessage,
  }) : super(key: key);

  final String email;
  final String name;
  final bool showErrorMessage;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: showErrorMessage ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        children: [
          reusableTextField(
            enable: false,
            context: context,
            hint: 'Email',
            text: email,
            onChanged: (text) {
              BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.emailChanged(text));
            },
            validator: () => BlocProvider.of<ProfileBloc>(context).state.email.value.fold(
                  (f) => f.maybeMap(
                    invalidEmail: (_) => 'Invalid email',
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
          ),
          const SizedBox(height: 24),
          reusableTextField(
            context: context,
            hint: 'Name',
            text: name,
            onChanged: (text) {
              BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.nameChanged(text));
            },
            validator: () => BlocProvider.of<ProfileBloc>(context).state.name.value.fold(
                  (f) => f.maybeMap(
                    shortageName: (_) => 'Shortage of the name',
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
          )
        ],
      ),
    );
  }
}
