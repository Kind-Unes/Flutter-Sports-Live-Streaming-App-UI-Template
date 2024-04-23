import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerCubit extends Cubit<int> {
  DrawerCubit() : super(0);

  void updateIndex(newIndex) {
    emit(newIndex);
  }
}
