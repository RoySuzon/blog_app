import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:blog_app/features/auth/domain/usecases/user_sign_up.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp _userSignUp;
  AuthBloc({required UserSignUp userSignUp})
      : _userSignUp = userSignUp,
        super(AuthInitial()) {
    on<AuthSignUpEvent>((event, emit) async {
      emit(AuthLoadingState());
      final response = await _userSignUp.call(UserSignUpParams(
          name: event.name, email: event.email, password: event.password));
      response.fold((l) => emit(AuthFailureState(message: l.message)),
          (r) => emit(AuthSucessState(user: r)));
    });
  }
}
