import 'package:courses_workshop/screens/register/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  // create the constructor
  RegisterCubit() : super(RegisterStateInitial());

  // create Singleton
  static RegisterCubit get(context) => BlocProvider.of(context);

  // create method to register the user
  // 1- change the state from initial to loading
  // 2- get data from the api
  // 3-
  postData() {
    print("heloo ya sayeeed");
  }
}
