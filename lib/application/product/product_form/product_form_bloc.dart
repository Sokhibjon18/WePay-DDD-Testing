import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_form_event.dart';
part 'product_form_state.dart';
part 'product_form_bloc.freezed.dart';

class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  ProductFormBloc() : super(const _Initial()) {
    on<ProductFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
