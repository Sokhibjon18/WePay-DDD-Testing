import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/profile/profile_bloc.dart';
import '../../../domain/models/user_model/user_model.dart';
import '../../../domain/profile/profile_failure.dart';
import '../../core/functions.dart';
import '../../core/snackbar.dart';
import 'forms/color_picker.dart';
import 'forms/log_out_btn.dart';
import 'forms/profile_form.dart';
import 'forms/save_btn.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listenWhen: (pre, cur) => pre.failureOrSuccessOption != cur.failureOrSuccessOption,
        listener: (context, state) {
          state.user.fold(() => null, (a) => a.fold((l) => null, (r) => null));
          state.failureOrSuccessOption.fold(
            () => null,
            (successOrFailure) => successOrFailure.fold(
              (failure) {
                String errorMessage = failure.map(
                  server: (_) => 'Server Error',
                  unexpected: (value) => value.errorMessage,
                );
                showSnackbar(scaffoldContext(context), SnackbarStatus.warning, errorMessage);
              },
              (success) => null,
            ),
          );
        },
        builder: (context, state) {
          if (state.isLoading && !state.showErrorMessage) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
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
                    const LogOutBtn()
                  ],
                ),
              ),
            );
          }
        },
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
