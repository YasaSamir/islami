part of 'suwer_cubit.dart';

sealed class SuwerState extends Equatable {
  const SuwerState();
}

final class SuwerInitial extends SuwerState {
  @override
  List<Object> get props => [];
}

final class SuwerLoading extends SuwerState {
  @override
  List<Object> get props => [];
}

final class SuwerSuccess extends SuwerState {
  final List<SuwarModel> suwar;

  const SuwerSuccess(this.suwar);

  @override
  List<Object> get props => [suwar];
}

final class SuwerFailure extends SuwerState {
  final String message;

  const SuwerFailure(this.message);

  @override
  List<Object> get props => [message];
}