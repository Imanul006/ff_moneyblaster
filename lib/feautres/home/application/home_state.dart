import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(GameState.ongoing) GameState selectedHomeTab,
  }) = _HomeState;

  const HomeState._();
}
