import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as z;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/application/search/search_bloc.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/search/search_failure.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/home/widgets/add_or_reject_dialog.dart';
import 'package:we_pay/presentation/home/widgets/bottom_sheet.dart';
import 'package:we_pay/presentation/home/widgets/apartment_item.dart';
import 'package:we_pay/presentation/home/widgets/request_header.dart';
import 'package:we_pay/presentation/router/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<FormApartmentBloc>().add(const FormApartmentEvent.initial());
          bottomsheet(context);
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blue,
        title: const Text('Houses'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.read<SearchBloc>().add(const SearchEvent.showAllApartment());
              context.router.push(const SearchRoute());
            },
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {
              // context.read<FormApartmentBloc>().add(const FormApartmentEvent.initial());
              // bottomsheet(context);
            },
            icon: const Icon(Icons.person_rounded),
          ),
          //!Testing perpose of product addition
          // StreamBuilder<z.Either<ProductFailure, List<Product>>>(
          //   stream: context.read<ProductActorBloc>().productsStream.stream,
          //   builder: ((_, snapshot) {
          //     log(snapshot.data.toString());
          //     return snapshot.data?.fold((l) => null, (r) => Text('${r.length}')) ?? Container();
          //   }),
          // )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StreamBuilder<z.Either<ApartmentFailure, List<Apartment>>>(
              stream: context.read<FormApartmentBloc>().apartmentStream.stream,
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container();
                } else {
                  return snapshot.data!.fold(
                    (l) => Container(),
                    (r) => ListView.separated(
                      shrinkWrap: true,
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
                }
              },
            ),
            StreamBuilder<z.Either<SearchFailure, List<RequestToJoin>>>(
              stream: context.read<FormApartmentBloc>().requestStream.stream,
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container();
                } else {
                  return snapshot.data!.fold(
                    (f) => Container(),
                    (r) {
                      if (r.isEmpty) return Container();
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          requestHeader(),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: r.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                  '${r[index].email} wants to join',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                subtitle: Text(r[index].apartmentName),
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => AddOrRejectDialog(r[index]));
                                },
                              );
                            },
                            separatorBuilder: (BuildContext _, int index) {
                              return Container(
                                height: 0.5,
                                color: Colors.grey[300],
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
