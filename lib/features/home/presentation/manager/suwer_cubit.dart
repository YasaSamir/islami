import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamii/features/home/data/model/suwar_model.dart';
import 'package:islamii/features/home/domain/repo/suwer_repo.dart';

part 'suwer_state.dart';

class SuwerCubit extends Cubit<SuwerState> {
  final SuwerRepo suwerRepo;

  SuwerCubit(this.suwerRepo) : super(SuwerInitial());

  Future<void> getSuwar() async {
    emit(SuwerLoading());
    try {
      final suwar = await suwerRepo.getSuwar();
      emit(SuwerSuccess(suwar));
    } catch (e) {
      emit(SuwerFailure(e.toString()));
    }
  }
}
