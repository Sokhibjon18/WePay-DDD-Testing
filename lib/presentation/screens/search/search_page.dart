import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:we_pay/application/request/request_bloc.dart';
import 'package:we_pay/application/search/search_bloc.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/presentation/screens/search/widgets/result_item.dart';
import 'package:we_pay/presentation/screens/search/widgets/search_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blue,
        leading: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: const SearchField(),
      ),
      body: BlocListener<RequestBloc, RequestState>(
        listenWhen: (p, c) => c.requstFailureOrSuccess.isSome() && p.isLoading != c.isLoading,
        listener: (context, state) {
          state.requstFailureOrSuccess.fold(
            () => null,
            (a) {
              a.fold(
                (f) {
                  String errorMessage = f.maybeMap(
                    orElse: () => 'Something went wrong',
                    userAlreadyAdded: (e) => 'You are in this apartment',
                    haveRequest: (e) => 'Your last request is waiting',
                  );
                  FlushbarHelper.createInformation(message: errorMessage).show(context);
                },
                (r) {
                  FlushbarHelper.createSuccess(message: 'Request sent successfully').show(context);
                },
              );
            },
          );
        },
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : state.listOrFailure.fold(
                    () => Container(),
                    (a) => a.fold(
                      (f) => Center(
                        child: Text(
                          f.map(
                            server: (e) => 'Server error occured $e',
                            unexpected: (e) => 'Unexpected error occured $e',
                            notFound: (_) => 'Apartment not found',
                            userAlreadyAdded: (e) => 'User already added',
                          ),
                        ),
                      ),
                      (r) => ListView.separated(
                        itemBuilder: (context, index) => SearchResultItem(apartment: r[index]),
                        separatorBuilder: (_, int index) => Container(
                          height: 0.5,
                          color: Colors.grey[300],
                        ),
                        itemCount: r.length,
                        shrinkWrap: true,
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
