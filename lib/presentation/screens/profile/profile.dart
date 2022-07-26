import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/profile/profile_bloc.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/domain/profile/profile_failure.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/screens/profile/forms/color_picker.dart';
import 'package:we_pay/presentation/screens/profile/forms/log_out_btn.dart';
import 'package:we_pay/presentation/screens/profile/forms/profile_form.dart';
import 'package:we_pay/presentation/screens/profile/forms/save_btn.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blue,
        title: const Text('Profile'),
        titleSpacing: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            state.user.fold(() => null, (a) => a.fold((l) => null, (r) => null));
          },
          builder: (context, state) {
            if (state.isLoading && !state.showErrorMessage) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileForm(
                      email: getEmailFromOption(state.user),
                      name: getNameFromOption(state.user),
                      showErrorMessage: state.showErrorMessage,
                    ),
                    const SizedBox(height: 24),
                    const Text('Color on the chart'),
                    const SizedBox(height: 8),
                    ProfileColorPicker(color: state.color),
                    const SizedBox(height: 32),
                    const ProfileSaveBtn(),
                    const SizedBox(height: 24),
                    Expanded(child: Container()),
                    const LogOutBtn()
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  String getEmailFromOption(Option<Either<ProfileFailure, UserModel>> option) {
    return option.fold(() => '', (a) => a.fold((l) => '', (r) => r.email ?? ''));
  }

  String getNameFromOption(Option<Either<ProfileFailure, UserModel>> option) {
    return option.fold(() => '', (a) => a.fold((l) => '', (r) => r.name));
  }
}
