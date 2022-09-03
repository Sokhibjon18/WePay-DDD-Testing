import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/screens/expense/date_picker/date_picker.dart';
import 'package:we_pay/presentation/core/functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

AppBar expencePageAppBar(BuildContext context, String apartmentName) => AppBar(
      backgroundColor: blue,
      elevation: 0,
      leading: GestureDetector(
        child: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onTap: () {
          context.router.pop();
        },
      ),
      titleSpacing: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StreamBuilder<DateTime>(
                    stream: context.read<ProductActorBloc>().dateTimeStream.stream,
                    builder: (context, snapshot) {
                      return Text(
                        getMonthAndYear(snapshot.data),
                        style: const TextStyle(fontSize: 18, color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      );
                    }),
                Text(
                  apartmentName,
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              final date = context.read<ProductActorBloc>().dateTime;
              showDialog(context: context, builder: (_) => DatePicker(date: date));
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.calendar_month,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
