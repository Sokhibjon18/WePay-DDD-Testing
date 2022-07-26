part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.emailChanged(String email) = _EmailChanged;
  const factory ProfileEvent.nameChanged(String name) = _NameChanged;
  const factory ProfileEvent.colorChanged(int color) = _ColorChanged;
  const factory ProfileEvent.saveChanges() = _SaveChanged;
}
