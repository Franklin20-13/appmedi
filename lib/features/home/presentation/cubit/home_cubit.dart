import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<int> {
  static const int home = 0;
  HomeCubit() : super(home);
  void changePage(int page) => emit(page);
}