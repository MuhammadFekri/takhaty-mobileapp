import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);

  String countryCode = '+20';
  void onChangeCountry({required String countryCode}) {
    this.countryCode = countryCode;
    emit(ChangeCountryState());
  }
}
