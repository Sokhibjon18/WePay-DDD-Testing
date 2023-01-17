import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../application/apartment/form_apartment_bloc.dart';
import '../../../../../domain/models/apartment/apartment.dart';
import '../../../../constants/colors.dart';
import '../../../../core/functions.dart';
import '../../../../core/snackbar.dart';
import '../../../widgets/my_btn.dart';
import '../../../widgets/my_text_field.dart';

void addExpenseBottomSheet(BuildContext context, {PublicExpense? publicExpense}) {
  showModalBottomSheet<dynamic>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (bottomSheetContext) => SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: EdgeInsets.only(
          left: 8,
          right: 8,
          bottom: MediaQuery.of(context).viewInsets.bottom + 8,
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              publicExpense == null ? 'Umumiy xarajat' : 'Nomni o`zgartirish',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            BlocConsumer<FormApartmentBloc, FormApartmentState>(
              listener: (context, state) {
                state.creationFailure.map(
                  (a) => a.fold(
                    (f) => showSnackbar(
                      scaffoldContext(context),
                      SnackbarStatus.warning,
                      'Server xatoligi',
                    ),
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
                      MyTextField(
                        text: publicExpense?.name ?? '',
                        enableAutoFocus: true,
                        hint: 'Nom kiriting',
                        onChanged: (text) {
                          BlocProvider.of<FormApartmentBloc>(context)
                              .add(FormApartmentEvent.nameChanged(text));
                        },
                        validator: () =>
                            BlocProvider.of<FormApartmentBloc>(context).state.name.value.fold(
                                  (f) => f.maybeMap(
                                    shortageAddress: (_) => 'Qisqa nom kiritildi',
                                    orElse: () => null,
                                  ),
                                  (r) => null,
                                ),
                      ),
                      const SizedBox(height: 12),
                      MyBtn(
                        child: state.loading
                            ? const CircularProgressIndicator(color: Colors.white)
                            : Text(
                                publicExpense == null ? 'Yaratish' : 'O`zgartirish',
                                style: const TextStyle(
                                  letterSpacing: .1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                        onTap: () {
                          if (!state.loading) {
                            publicExpense == null
                                ? BlocProvider.of<FormApartmentBloc>(context)
                                    .add(const FormApartmentEvent.creatApartment())
                                : BlocProvider.of<FormApartmentBloc>(context)
                                    .add(FormApartmentEvent.updateApartment(
                                    publicExpense.uid,
                                    publicExpense.ownerId!,
                                  ));
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    ),
  );
}
