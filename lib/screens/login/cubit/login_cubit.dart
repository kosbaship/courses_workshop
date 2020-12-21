import 'package:courses_workshop/screens/login/cubit/login_states.dart';
import 'package:courses_workshop/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginStateInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  login({email, password}) async {
    emit(LoginStateLoading());

    DioHelper.postData(
      path: "lms/oauth/token",
      data: {
        'username': '$email',
        'password': '$password',
        'grant_type': 'password',
        'client_id': '1',
        'client_secret': 'UFj2FJ7X2jQfSjtptUIadua4rb0yeZjKvVaS55T9',
      },
    ).then((value) {
      // this access token is inside the server response
      emit(LoginStateSuccess(value.data["access_token"]));
    }).catchError((e) {
      emit(LoginStateError(e.toString()));
    });
  }
}
