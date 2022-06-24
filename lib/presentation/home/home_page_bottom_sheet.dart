import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/crud/crud_apartment_bloc.dart';
import 'package:we_pay/presentation/home/reusables.dart';

void bottomsheet(context) {
  showModalBottomSheet<dynamic>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (bottomSheetContext) => SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              height: 56,
              child: const Center(
                child: Text(
                  'Adding apartment',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 24, left: 32, right: 32, bottom: 32),
              child: BlocConsumer<CRUDApartmentBloc, CRUDApartmentState>(
                listener: (context, state) {
                  state.creationFailure.map(
                    (a) => a.fold(
                      (f) => FlushbarHelper.createError(message: 'Server error')
                          .show(bottomSheetContext),
                      (r) => Navigator.pop(context),
                    ),
                  );
                },
                builder: (context, state) {
                  return Form(
                    autovalidateMode:
                        BlocProvider.of<CRUDApartmentBloc>(context).state.showErrorMessage
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                    child: Column(
                      children: [
                        reusableTextField(
                          context: context,
                          hint: 'Region',
                          onChanged: (text) {
                            BlocProvider.of<CRUDApartmentBloc>(context)
                                .add(CRUDApartmentEvent.regionChanged(text));
                          },
                          validator: () => BlocProvider.of<CRUDApartmentBloc>(context)
                              .state
                              .regionName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  shortageAddress: (_) => 'Shortage of the name',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                        ),
                        const SizedBox(height: 24),
                        reusableTextField(
                          context: context,
                          hint: 'District',
                          onChanged: (text) {
                            BlocProvider.of<CRUDApartmentBloc>(context)
                                .add(CRUDApartmentEvent.districtChanged(text));
                          },
                          validator: () => BlocProvider.of<CRUDApartmentBloc>(context)
                              .state
                              .districtName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  shortageAddress: (_) => 'Shortage of the name',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                        ),
                        const SizedBox(height: 24),
                        reusableTextField(
                          context: context,
                          hint: 'Street',
                          onChanged: (text) {
                            BlocProvider.of<CRUDApartmentBloc>(context)
                                .add(CRUDApartmentEvent.streetNameChanged(text));
                          },
                          validator: () => BlocProvider.of<CRUDApartmentBloc>(context)
                              .state
                              .streetName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  shortageAddress: (_) => 'Shortage of the name',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: reusableTextField(
                                context: context,
                                hint: 'House number',
                                onChanged: (text) {
                                  BlocProvider.of<CRUDApartmentBloc>(context)
                                      .add(CRUDApartmentEvent.houseNumberChanged(text));
                                },
                                validator: () => BlocProvider.of<CRUDApartmentBloc>(context)
                                    .state
                                    .houseNumber
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        shortageAddress: (_) => 'Shortage of the name',
                                        empty: (_) => 'Field is empty',
                                        orElse: () => null,
                                      ),
                                      (r) => null,
                                    ),
                              ),
                            ),
                            const SizedBox(width: 24),
                            Expanded(
                              child: reusableTextField(
                                context: context,
                                hint: 'Flat number',
                                onChanged: (text) {
                                  BlocProvider.of<CRUDApartmentBloc>(context)
                                      .add(CRUDApartmentEvent.flatNumberChanged(text));
                                },
                                validator: () {},
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            if (!state.loading) {
                              BlocProvider.of<CRUDApartmentBloc>(context)
                                  .add(const CRUDApartmentEvent.creatApartment());
                            }
                          },
                          child: Container(
                            height: 45,
                            margin: const EdgeInsets.only(top: 24),
                            color: Colors.blue,
                            child: Center(
                              child: state.loading
                                  ? const CircularProgressIndicator(color: Colors.white)
                                  : const Text(
                                      'Add',
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ),
  );
}
