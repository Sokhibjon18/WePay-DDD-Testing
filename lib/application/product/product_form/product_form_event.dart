part of 'product_form_bloc.dart';

@freezed
class ProductFormEvent with _$ProductFormEvent {
  const factory ProductFormEvent.initial() = _Initial;
  const factory ProductFormEvent.editingProduct(Product product) = _EditingProduct;
  const factory ProductFormEvent.nameChanged(String name) = _NameChanged;
  const factory ProductFormEvent.priceChanged(String price) = _PriceChanged;
  const factory ProductFormEvent.dateChanged(DateTime date) = _DateChanged;
  const factory ProductFormEvent.countChanged(int count) = _CountChanged;
  const factory ProductFormEvent.creatProduct(String apartmentId) = _CreateProduct;
  const factory ProductFormEvent.sendNotificationsTo(List<String> users) = _SendNotification;
  const factory ProductFormEvent.updateProduct(Product product) = _UpdateProduct;
  const factory ProductFormEvent.deleteProduct(Product product) = _DeleteProduct;
}
