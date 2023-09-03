part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class InitialState extends AuthState {
  const InitialState(String s);
}

class Authenticating extends AuthState {
  final String mess;
  const Authenticating(this.mess);

  @override
  List<Object> get props => [];
}

class Unauthenticated extends AuthState {
  const Unauthenticated();

  @override
  List<Object> get props => [];
}

class Authenticated extends AuthState {
  const Authenticated();

  @override
  List<Object> get props => [];
}

class AuthError extends AuthState {
  final String mess;
  const AuthError(this.mess);

  @override
  List<Object> get props => [];
}

class Temp extends AuthState {
  final String mess = "";
  const Temp();

  @override
  List<Object> get props => [];
}
