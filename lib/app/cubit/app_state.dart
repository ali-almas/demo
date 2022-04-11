part of 'app_cubit.dart';

class Authorized extends GenericState {
  final EntranceState entranceState;

  Authorized(this.entranceState);
}

class Unauthorized extends GenericState {}

class Pin extends GenericState {}

class Onboarding extends GenericState {}
