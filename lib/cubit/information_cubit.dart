import 'package:asaba/models/models.dart';
import 'package:asaba/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'information_state.dart';

class InformationCubit extends Cubit<InformationState> {
  InformationCubit() : super(InformationInitial());

  Future<void> getInformations() async {
    ApiReturnValue<List<Information>> result =
        await InformationServices.getInformations();

    if (result.value != null) {
      emit(InformationLoaded(result.value));
    } else {
      emit(InformationLoadingFailed(result.message));
    }
  }

  Future<void> getInformationss() async {
    ApiReturnValue<List<Information>> result =
        await InformationServices.getInformationss();

    if (result.value != null) {
      emit(InformationLoaded(result.value));
    } else {
      emit(InformationLoadingFailed(result.message));
    }
  }
}
