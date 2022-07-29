import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as z;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/application/connection/connection_bloc.dart' as con;
import 'package:we_pay/application/profile/profile_bloc.dart';
import 'package:we_pay/application/search/search_bloc.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/search/search_failure.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/screens/home/widgets/add_or_reject_dialog.dart';
import 'package:we_pay/presentation/screens/home/widgets/bottom_sheet.dart';
import 'package:we_pay/presentation/screens/home/widgets/apartment_item.dart';
import 'package:we_pay/presentation/screens/home/widgets/request_header.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/presentation/screens/utils/functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<FormApartmentBloc>().add(const FormApartmentEvent.initial());
    super.initState();
  }

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
              context.read<ProfileBloc>().add(const ProfileEvent.started());
              context.router.push(const ProfileRoute());
            },
            icon: const Icon(Icons.person_rounded),
          ),
          IconButton(
            onPressed: () {
              context.read<SearchBloc>().add(const SearchEvent.showAllApartment());
              context.router.push(const SearchRoute());
            },
            icon: const Icon(Icons.search_rounded),
          ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<FormApartmentBloc, FormApartmentState>(
            listener: (context, state) {
              state.editOptions.fold(
                () => null,
                (a) => a.fold(
                  (f) {
                    String errorMessage = '';
                    errorMessage = f.maybeMap(
                      wrongOwner: (value) => value.errorMessage,
                      orElse: () => '',
                    );
                    if (errorMessage.isNotEmpty) {
                      FlushbarHelper.createInformation(message: errorMessage).show(context);
                    }
                  },
                  (r) {
                    bottomsheet(
                      context.findAncestorStateOfType<HomePageState>()!.context,
                      apartment: r,
                    );
                  },
                ),
              );
              state.deleteOption.fold(
                () => null,
                (a) => a.fold(
                  (f) {
                    final errorMessage = f.map(
                      serverError: (_) => 'Server error',
                      permissionDenied: (_) => 'Permission denied',
                    );
                    if (errorMessage.isNotEmpty) {
                      FlushbarHelper.createError(message: errorMessage).show(context);
                    }
                  },
                  (r) {
                    FlushbarHelper.createInformation(message: 'Apartment deleted').show(context);
                  },
                ),
              );
            },
          ),
          BlocListener<con.ConnectionBloc, con.ConnectionState>(
            listener: (context, state) {
              state.connected.fold(() => null, (a) {
                if (!a) {
                  showNoConnectionDialog(context);
                } else {
                  dismissConnectionDialog(context);
                }
              });
            },
          ),
        ],
        child: SingleChildScrollView(
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
                      (r) {
                        context
                            .read<FormApartmentBloc>()
                            .add(FormApartmentEvent.getApartmentUsersAndExpenses(r));
                        return ListView.separated(
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
                        );
                      },
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
                                    '//${r[index].email} wants to join',
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
      ),
    );
  }
}
