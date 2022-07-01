import 'dart:developer';

import 'package:dartz/dartz.dart' as z;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/domain/product/product_failure.dart';
import 'package:we_pay/presentation/home/widgets/bottom_sheet.dart';
import 'package:we_pay/presentation/home/widgets/apartment_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Houses'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.read<FormApartmentBloc>().add(const FormApartmentEvent.initial());
              bottomsheet(context);
            },
            icon: const Icon(Icons.add),
          ),
          StreamBuilder<z.Either<ProductFailure, List<Product>>>(
            stream: context.read<ProductActorBloc>().productsStream.stream,
            builder: ((_, snapshot) {
              log(snapshot.data.toString());
              return snapshot.data?.fold((l) => null, (r) => Text('${r.length}')) ?? Container();
            }),
          )
        ],
      ),
      body: StreamBuilder<z.Either<ApartmentFailure, List<Apartment>>>(
        stream: context.read<FormApartmentBloc>().apartmentStream.stream,
        builder: (context, snapshot) {
          return snapshot.data == null
              ? Container()
              : snapshot.data!.fold(
                  (l) => Container(),
                  (r) => ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: r.length,
                    itemBuilder: (context, index) {
                      return ApartmentItem(apartment: r[index]);
                    },
                    separatorBuilder: (BuildContext _, int index) {
                      return Container(
                        height: 0.5,
                        color: Colors.grey[300],
                      );
                    },
                  ),
                );
        },
      ),
    );
  }
}
