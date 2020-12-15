import 'package:courses_workshop/screens/register/cubit/register_states.dart';
import 'package:courses_workshop/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  // create the constructor
  RegisterCubit() : super(RegisterStateInitial());

  // create Singleton
  static RegisterCubit get(context) => BlocProvider.of(context);

  // create method to register the user
  // 1- change the state from initial to loading
  // 2- get data from the api
  // 3- change the state to success to use it for moving the user to the home screen
  // 4- catch the error with stste error
  register({first, last, email, password, city}) {
    //change the state
    emit(RegisterStateLoading());

    //post the date
    DioHelper.postData(path: "lms/api/v1/auth/signup-save", data: {
      'first_name': '$first',
      'last_name': '$last',
      'email': '$email',
      'password': '$password',
      'city': '$city',
    }).then((value) {
      emit(RegisterStateSuccess());
    }).catchError((e) {
      emit(RegisterStateError(e.toString()));
    });
  }
}
