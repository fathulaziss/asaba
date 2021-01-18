part of 'information_cubit.dart';

abstract class InformationState extends Equatable {
  const InformationState();

  @override
  List<Object> get props => [];
}

class InformationInitial extends InformationState {}

class InformationLoaded extends InformationState {
  final List<Information> informations;

  InformationLoaded(this.informations);

  @override
  List<Object> get props => [informations];
}

class InformationLoadingFailed extends InformationState {
  final String message;

  InformationLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
