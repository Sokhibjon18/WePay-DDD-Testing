part of 'crud_apartment_bloc.dart';

@freezed
class CRUDApartmentEvent with _$CRUDApartmentEvent {
  const factory CRUDApartmentEvent.regionChanged(String region) = _RegionChanged;
  const factory CRUDApartmentEvent.districtChanged(String district) = _DistrictChanged;
  const factory CRUDApartmentEvent.streetNameChanged(String street) = _StreetNameChanged;
  const factory CRUDApartmentEvent.houseNumberChanged(String house) = _HouseNumberChanged;
  const factory CRUDApartmentEvent.flatNumberChanged(String flat) = _FlatNumberChanged;
  const factory CRUDApartmentEvent.creatApartment() = _CreateApartment;
}
