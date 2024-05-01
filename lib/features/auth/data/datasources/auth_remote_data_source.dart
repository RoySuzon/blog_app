// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blog_app/core/error/server_exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteSource {
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<String> loginWithEmailPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteSourceImpl implements AuthRemoteSource {
  final SupabaseClient supabaseClient;
  AuthRemoteSourceImpl({
    required this.supabaseClient,
  });
  @override
  Future<String> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return "";
  }

  @override
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth
          .signUp(password: password, email: email, data: {"name": name});
      if (response.user == null) {
        throw ServerException( "User is null!");
      } else {
        return response.user!.id;
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
