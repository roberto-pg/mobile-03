part of 'login_controller.dart';

enum LoginStatus { initial, loading, failure }

class LoginState extends Equatable {
  final LoginStatus status;
  final String? errorMesssage;

  const LoginState._({required this.status, this.errorMesssage});

  const LoginState.initial() : this._(status: LoginStatus.initial);

  @override
  List<Object?> get props => [status, errorMesssage];

  LoginState copyWith({
    LoginStatus? status,
    String? errorMesssage,
  }) {
    return LoginState._(
      status: status ?? this.status,
      errorMesssage: errorMesssage ?? this.errorMesssage,
    );
  }
}
