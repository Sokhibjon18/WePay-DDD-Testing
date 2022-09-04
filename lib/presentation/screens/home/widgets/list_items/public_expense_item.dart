// ignore_for_file: use_build_context_synchronously
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:we_pay/application/search/search_user/search_bloc.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/current_date_expense.dart';
import 'package:we_pay/domain/models/roommates.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/presentation/screens/home/widgets/dialogs_sheets/search_user_bottom_sheet.dart';
import 'package:we_pay/presentation/screens/widgets/my_pop_up_menu.dart';

class PublicExpenseItem extends StatelessWidget {
  PublicExpenseItem({Key? key, required this.publicExpens}) : super(key: key);

  final PublicExpense publicExpens;
  final publicExpenseMoreKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        context.read<ProductActorBloc>().add(ProductActorEvent.watch(publicExpens.uid));
        await context.router.push(ExpenseRoute(publicExpense: publicExpens));
        context.read<FormApartmentBloc>().add(const FormApartmentEvent.initializeStreams());
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 14),
        margin: const EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    publicExpens.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => showPublicExpenseActions(context),
                  child: Container(
                    key: publicExpenseMoreKey,
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: grey,
                    ),
                    child: const Icon(Icons.more_horiz_rounded, color: blue),
                  ),
                )
              ],
            ),
            const SizedBox(height: 4),
            StreamBuilder<List<Roommates>>(
              stream: context.read<FormApartmentBloc>().roommates.stream,
              builder: (context, snapshot) {
                return Text(
                  snapshot.data == null ? 'Loading' : getUsersFromList(snapshot.data!),
                  style: const TextStyle(fontSize: 15),
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                );
              },
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: grey,
              ),
              child: StreamBuilder<List<CurrentDateExpense>>(
                stream: context.read<FormApartmentBloc>().expenses.stream,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data == null ? 'Loading' : getExPensesFromList(snapshot.data!),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2,
                      color: blue,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  String getUsersFromList(List<Roommates> roommates) {
    for (var item in roommates) {
      if (item.apartmentId == publicExpens.uid) {
        return item.roommates;
      }
    }
    return 'Not found';
  }

  String getExPensesFromList(List<CurrentDateExpense> expenses) {
    for (var item in expenses) {
      if (item.apartmentId == publicExpens.uid) {
        return item.expence;
      }
    }
    return 'Not found';
  }

  void showPublicExpenseActions(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => MyPopUpMenu(
        moreIconRectCordinates: publicExpenseMoreKey.globalPaintBounds,
        popUpItems: [
          MyPopUpMenuItem(
            svgPath: 'assets/svg/edit.svg',
            text: 'Nomni o`zgartirish',
            action: () {
              context
                  .read<FormApartmentBloc>()
                  .add(FormApartmentEvent.editingApartment(publicExpens));
            },
          ),
          MyPopUpMenuItem(
            svgPath: 'assets/svg/add.svg',
            text: 'Odam qo`shish',
            action: () {
              showModalBottomSheet<dynamic>(
                context: Scaffold.of(context).context,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                builder: (bottomSheetContext) => BlocProvider(
                  create: (_) => getIt<SearchBloc>(),
                  child: SearchUserBottomSheet(publicExpens),
                ),
              );
            },
          ),
          MyPopUpMenuItem(
            svgPath: 'assets/svg/delete.svg',
            text: 'O`chirish',
            action: () {
              context
                  .read<FormApartmentBloc>()
                  .add(FormApartmentEvent.deleteApartment(publicExpens));
            },
          )
        ],
      ),
    );
  }
}
