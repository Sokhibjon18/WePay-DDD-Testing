import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/current_date_expense.dart';
import 'package:we_pay/domain/models/roommates.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/presentation/screens/home/home_page.dart';
import 'package:we_pay/presentation/screens/home/widgets/bottom_sheet.dart';

class ApartmentItem extends StatelessWidget {
  const ApartmentItem({Key? key, required this.apartment}) : super(key: key);

  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        openThreshold: 0.2,
        closeThreshold: 0.2,
        extentRatio: 0.4,
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              context.read<FormApartmentBloc>().add(FormApartmentEvent.editingApartment(apartment));
            },
            backgroundColor: green,
            spacing: 8,
            icon: Icons.mode_edit_rounded,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (_) {
              context.read<FormApartmentBloc>().add(FormApartmentEvent.deleteApartment(apartment));
            },
            spacing: 8,
            backgroundColor: red,
            icon: Icons.save,
            label: 'Delete',
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          context
              .read<ProductActorBloc>()
              .add(ProductActorEvent.watch(apartment.uid!, DateTime.now()));
          context.router.push(ExpenseRoute(apartmentName: apartment.getFullAddress()));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      apartment.getFullAddress(),
                      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    StreamBuilder<List<Roommates>>(
                      stream: context.read<FormApartmentBloc>().roommates.stream,
                      builder: (context, snapshot) {
                        return Text(
                          snapshot.data == null ? 'Loading' : getUsersFromList(snapshot.data!),
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.green,
                child: Center(
                  child: StreamBuilder<List<CurrentDateExpense>>(
                    stream: context.read<FormApartmentBloc>().expenses.stream,
                    builder: (context, snapshot) {
                      return Text(
                        snapshot.data == null ? 'Loading' : getExPensesFromList(snapshot.data!),
                        style: const TextStyle(fontSize: 14, color: white),
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getUsersFromList(List<Roommates> roommates) {
    for (var item in roommates) {
      if (item.apartmentId == apartment.uid!) {
        return item.roommates;
      }
    }
    return 'Not found';
  }

  String getExPensesFromList(List<CurrentDateExpense> expenses) {
    for (var item in expenses) {
      if (item.apartmentId == apartment.uid!) {
        return item.expence;
      }
    }
    return 'Not found';
  }
}
