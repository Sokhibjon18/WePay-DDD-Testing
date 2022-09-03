import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/request/request_bloc.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/core/snackbar.dart';

class UserSearchItem extends StatelessWidget {
  const UserSearchItem({
    Key? key,
    required this.user,
    required this.publicExpense,
  }) : super(key: key);

  final UserModel user;
  final PublicExpense publicExpense;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RequestBloc, RequestState>(
      listener: (context, state) {
        state.requstFailureOrSuccess.fold(
          () => null,
          (option) => option.fold(
            (f) {
              SnackbarStatus status = SnackbarStatus.error;
              String errorMessage = f.map(
                server: (_) => 'Server xatoligi',
                unexpected: (error) => error.errorMessage,
                userAlreadyAdded: (_) {
                  status = SnackbarStatus.warning;
                  return 'Ro`yxatga qo`shilgan';
                },
                haveRequest: (_) {
                  status = SnackbarStatus.warning;
                  return 'So`rov jo`natilgan';
                },
              );
              Navigator.pop(context);
              Future.delayed(
                const Duration(seconds: 1),
                showSnackbar(context, status, errorMessage),
              );
            },
            (r) {
              if (r == RequestOperations.sent) {
                Navigator.pop(context);
                Future.delayed(
                  const Duration(seconds: 1),
                  showSnackbar(context, SnackbarStatus.success, 'So`rov jo`natildi'),
                );
              }
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2,
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'email: ${user.email}',
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: greyDark,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                context.read<RequestBloc>().add(RequestEvent.inviteUserTo(publicExpense, user.uid));
              },
              child: Container(
                width: 100,
                decoration: BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: BlocBuilder<RequestBloc, RequestState>(
                  builder: (context, state) {
                    return Text(
                      state.isLoading ? 'Loading...' : 'Qo`shish',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        letterSpacing: 0.2,
                        color: blue,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum UserSearchItemState { free, member, requested }
