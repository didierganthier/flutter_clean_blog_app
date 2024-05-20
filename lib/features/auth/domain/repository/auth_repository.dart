import 'package:flutter_clean_blog_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

/// Interface for the authentication repository.
/// Provides methods for user signup and login.
abstract interface class AuthRepository {
  /// Signs up a user with the provided [name], [email], and [password].
  /// Returns an [Either] with [Failure] in case of an error or a [String] representing
  /// a user ID or token upon successful signup.
  Future<Either<Failure, String>> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  /// Logs in a user with the provided [email] and [password].
  /// Returns an [Either] with [Failure] in case of an error or a [String] representing
  /// a user ID or token upon successful login.
  Future<Either<Failure, String>> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
}
