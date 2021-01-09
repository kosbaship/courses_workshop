import 'package:courses_workshop/models/courses_model.dart';
import 'package:courses_workshop/screens/courses/cubit/courses_states.dart';
import 'package:courses_workshop/shared/network/local/shared_prefs.dart';
import 'package:courses_workshop/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesCubit extends Cubit<CoursesStates> {
  CoursesCubit() : super(CoursesStateInitial());

  List<CoursesModel> list = [];

  static CoursesCubit get(context) => BlocProvider.of(context);

  getCourses() {
    emit(CoursesStateLoading());

    DioHelper.postData(path: 'lms/api/v1/courses', token: getToken())
        .then((value) {
      emit(CoursesStateSuccess());

      list = (value.data['result']['data'] as List)
          .map((json) => CoursesModel.fromJson(json))
          .toList();

      print('===============================');
      print(list[0].title);
      print('===============================');
      print(value.data['result']['data'][0]['price']);
      print('===============================');
    }).catchError((e) {
      print(e.toString());
      emit(CoursesStateError(e.toString()));
    });
  }
}
