import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';


part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const InitialState(""));
  Future<void> initial() async {
    try {
      emit(const InitialState(""));
      await Future.delayed(const Duration(seconds: 4));
      emit(const Authenticated());
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
