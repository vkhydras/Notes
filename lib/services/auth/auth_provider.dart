import 'package:notes_app/services/auth/auth_user.dart';

abstract class AuthProvider {
  AuthUser? get currentUser;
  Future<AuthUser> logIn({
    required String email,
    required String passsword,
  });
  Future<AuthUser> createUser({
    required String email,
    required String passsword,
  });
  Future<void> logOut();
  Future<void> sendEmailVerification();
}
