import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/profile/profile_bloc.dart';
import 'package:we_pay/presentation/constants/colors.dart';

class ProfileSaveBtn extends StatelessWidget {
  const ProfileSaveBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: blue,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            context.read<ProfileBloc>().add(const ProfileEvent.saveChanges());
          },
          child: Center(
            child: context.read<ProfileBloc>().state.isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : const Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
          ),
        ),
      ),
    );
  }
}
