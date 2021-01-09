import 'package:courses_workshop/models/courses_model.dart';
import 'package:courses_workshop/screens/search/cubit/search_states.dart';
import 'package:courses_workshop/shared/network/local/shared_prefs.dart';
import 'package:courses_workshop/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchStateInitial());

  List<CoursesModel> list = [];

  static SearchCubit get(context) => BlocProvider.of(context);

  getCourseWithSearchQuery({query}) {
    emit(SearchStateLoading());

    DioHelper.postData(
      path: 'lms/api/v1//search',
      token: getToken(),
      data: {
        'q': '$query',
        'type': '1',
      },
    ).then((value) {
      emit(SearchStateSuccess());

      list = (value.data['result']['data'] as List)
          .map((json) => CoursesModel.fromJson(json))
          .toList();

      print('===============================');
      print(list.length);
      print('===============================');
      print(value.data['result']['data'][0]['price']);
      print('===============================');
    }).catchError((e) {
      print(e.toString());
      emit(SearchStateError(e.toString()));
    });
  }
}
