import 'package:courses_workshop/models/user_model.dart';
import 'package:courses_workshop/screens/profile/cubit/profile_states.dart';
import 'package:courses_workshop/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  // create the constructor
  ProfileCubit() : super(ProfileStateInitial());

  UserModel userModel;

  // create Singleton
  static ProfileCubit get(context) => BlocProvider.of(context);

  getUserInfo() {
    emit(ProfileStateLoading());

    DioHelper.postData(path: 'lms/api/v1/my-account').then((value) {
      emit(ProfileStateSuccess());

      userModel = UserModel.fromJson(value.data['result']);

      print('===============================');
      print(userModel.uuid);
      print('===============================');
      print(value.data['result']['email']);
      print('===============================');
    }).catchError((e) {
      print(e.toString());
      emit(ProfileStateError(e.toString()));
    });
  }
}
