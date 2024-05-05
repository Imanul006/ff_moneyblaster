import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:ff_moneyblaster/feautres/home/domain/tournament.dart';
import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(GameState.ongoing) GameState selectedHomeTab,
    @Default([]) List<Tournament> tournaments,
    @Default('') String errorMessage,
    Tournament? selectedTournament,
    @Default([]) List<UserModel> topUsers,
  }) = _HomeState;

  const HomeState._();
}
