import 'package:dartz/dartz.dart' as z;
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/application/connection/connection_bloc.dart' as con;
import 'package:we_pay/application/search/search_user/search_bloc.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/search/search_failure.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/core/snackbar.dart';
import 'package:we_pay/presentation/screens/home/widgets/dialogs_sheets/add_expense_bottom_sheet.dart';
import 'package:we_pay/presentation/screens/home/widgets/list_items/public_expense_item.dart';
import 'package:we_pay/presentation/screens/home/widgets/list_items/invitations_item.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/presentation/core/functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<FormApartmentBloc>().add(const FormApartmentEvent.initializeStreams());
    context.read<FormApartmentBloc>().add(const FormApartmentEvent.initial());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
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
                    showSnackbar(context, SnackbarStatus.warning, errorMessage);
                  }
                },
                (r) {
                  addExpenseBottomSheet(
                    context.findAncestorStateOfType<HomePageState>()!.context,
                    publicExpense: r,
                  );
                },
              ),
            );
            state.deleteOption.fold(
              () => null,
              (a) => a.fold(
                (f) {
                  final errorMessage = f.map(
                    serverError: (_) => 'Server xatoligi',
                    permissionDenied: (_) => 'Ruxsat berilmagan',
                  );
                  if (errorMessage.isNotEmpty) {
                    showSnackbar(context, SnackbarStatus.error, errorMessage);
                  }
                },
                (r) {
                  showSnackbar(context, SnackbarStatus.success, 'O`chirildi');
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Xarajatlar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              const Text(
                'Umumiy',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.1),
              ),
              const SizedBox(height: 12),
              StreamBuilder<z.Either<ApartmentFailure, List<PublicExpense>>>(
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
                        return Column(
                          children: [
                            ListView.builder(
                              padding: const EdgeInsets.all(0),
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: r.length,
                              itemBuilder: (context, index) {
                                return PublicExpenseItem(publicExpens: r[index]);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
              GestureDetector(
                onTap: () {
                  context.read<FormApartmentBloc>().add(const FormApartmentEvent.initial());
                  addExpenseBottomSheet(Scaffold.of(context).context);
                },
                child: DottedBorder(
                  strokeWidth: 2,
                  strokeCap: StrokeCap.butt,
                  color: blue,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(8),
                  child: Container(
                    height: 110,
                    alignment: Alignment.center,
                    child: const Icon(Icons.add_rounded, color: blue, size: 64),
                  ),
                ),
              ),
              StreamBuilder<z.Either<SearchFailure, List<RequestToJoin>>>(
                stream: context.read<FormApartmentBloc>().requestStream.stream,
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Container();
                  } else {
                    return snapshot.data!.fold(
                      (f) => Container(),
                      (request) {
                        if (request.isEmpty) return Container();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 1,
                              color: grey,
                              margin: const EdgeInsets.only(top: 30, bottom: 14),
                            ),
                            const Text(
                              'Takliflar',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.1),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: request.length,
                              itemBuilder: (context, index) =>
                                  InvitationItem(request: request[index]),
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
