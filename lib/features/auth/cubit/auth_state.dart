part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class ChangeCountryState extends AuthState {}

class SelectVerificationMethodState extends AuthState {}
