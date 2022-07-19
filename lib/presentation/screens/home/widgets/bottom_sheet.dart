import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/presentation/screens/utils/reusable_widgets.dart';

void bottomsheet(BuildContext context, {Apartment? apartment}) {
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
              child: Center(
                child: Text(
                  apartment == null ? 'Adding apartment' : 'Edit apartment',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 24, left: 32, right: 32, bottom: 32),
              child: BlocConsumer<FormApartmentBloc, FormApartmentState>(
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
                        BlocProvider.of<FormApartmentBloc>(context).state.showErrorMessage
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                    child: Column(
                      children: [
                        reusableTextField(
                          context: context,
                          hint: 'Region',
                          text: apartment?.region ?? '',
                          onChanged: (text) {
                            BlocProvider.of<FormApartmentBloc>(context)
                                .add(FormApartmentEvent.regionChanged(text));
                          },
                          validator: () => BlocProvider.of<FormApartmentBloc>(context)
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
                          text: apartment?.district ?? '',
                          onChanged: (text) {
                            BlocProvider.of<FormApartmentBloc>(context)
                                .add(FormApartmentEvent.districtChanged(text));
                          },
                          validator: () => BlocProvider.of<FormApartmentBloc>(context)
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
                          text: apartment?.street ?? '',
                          onChanged: (text) {
                            BlocProvider.of<FormApartmentBloc>(context)
                                .add(FormApartmentEvent.streetNameChanged(text));
                          },
                          validator: () => BlocProvider.of<FormApartmentBloc>(context)
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: reusableTextField(
                                context: context,
                                hint: 'House number',
                                text: apartment?.houseNumber ?? '',
                                onChanged: (text) {
                                  BlocProvider.of<FormApartmentBloc>(context)
                                      .add(FormApartmentEvent.houseNumberChanged(text));
                                },
                                validator: () => BlocProvider.of<FormApartmentBloc>(context)
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
                                inputType: TextInputType.number,
                                text: apartment?.flatNumber ?? '',
                                onChanged: (text) {
                                  BlocProvider.of<FormApartmentBloc>(context)
                                      .add(FormApartmentEvent.flatNumberChanged(text));
                                },
                                validator: () {},
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            if (!state.loading) {
                              apartment == null
                                  ? BlocProvider.of<FormApartmentBloc>(context)
                                      .add(const FormApartmentEvent.creatApartment())
                                  : BlocProvider.of<FormApartmentBloc>(context)
                                      .add(FormApartmentEvent.updateApartment(
                                      apartment.uid!,
                                      apartment.ownerId!,
                                    ));
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
                                      'Save',
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
