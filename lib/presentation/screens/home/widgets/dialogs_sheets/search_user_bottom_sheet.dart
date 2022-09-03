import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/request/request_bloc.dart';
import 'package:we_pay/application/search/search_user/search_bloc.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/core/functions.dart';
import 'package:we_pay/presentation/screens/home/widgets/list_items/user_serach_item.dart';
import 'package:we_pay/presentation/screens/widgets/my_btn.dart';

void searchUserBottomSheet(BuildContext context, String publicExpensUid) {}

// ignore: must_be_immutable
class SearchUserBottomSheet extends StatelessWidget {
  const SearchUserBottomSheet(this.publicExpens, {Key? key}) : super(key: key);

  static int _userId = 0;
  final PublicExpense publicExpens;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          color: white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close_rounded, color: blue, size: 28),
                ),
                const SizedBox(width: 20),
                const Text(
                  'ID bo`yicha qidirish',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 36,
              child: TextField(
                onChanged: (value) {
                  _userId = int.tryParse(value) ?? 0;
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  prefixIconColor: greyDark,
                  filled: true,
                  hintText: 'Foydalanuvchi IDsini kiriting',
                  hintStyle: TextStyle(color: hintColor, letterSpacing: 0.1),
                  fillColor: grey,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: transparent),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: transparent),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: transparent),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ),
            const SizedBox(height: 12),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    height: 80,
                    width: 80,
                    child: showProgressIndicator(),
                  );
                } else if (state.firstTime) {
                  return Container(
                    alignment: Alignment.center,
                    height: 80,
                    child: const Text('Natija', style: TextStyle(color: greyDark)),
                  );
                } else {
                  UserModel? user;
                  String errorText = '';
                  state.userOrFailure?.fold(
                    (f) => f.maybeMap(
                      notFound: (_) => errorText = 'Foydalanuvchi topilmadi',
                      orElse: () => errorText = 'Xatolik',
                    ),
                    (u) => user = u,
                  );
                  return Container(
                    alignment: Alignment.center,
                    height: 80,
                    child: errorText.isEmpty
                        ? BlocProvider(
                            create: (context) => getIt<RequestBloc>(),
                            child: UserSearchItem(user: user!, publicExpense: publicExpens),
                          )
                        : Text(errorText, style: const TextStyle(color: red)),
                  );
                }
              },
            ),
            const SizedBox(height: 12),
            MyBtn(
              child: const Text(
                'Qidirish',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () => context.read<SearchBloc>().add(SearchEvent.search(_userId)),
            ),
          ],
        ),
      ),
    );
  }
}
