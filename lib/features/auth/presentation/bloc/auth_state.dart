// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthFailureState extends AuthState {
  final String message;
  const AuthFailureState({
    required this.message,
  });
}

class AuthSucessState extends AuthState {
  final String uid;
  const AuthSucessState({
    required this.uid,
  });
}
