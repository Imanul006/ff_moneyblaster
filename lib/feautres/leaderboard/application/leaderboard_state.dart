import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_state.freezed.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    @Default(false) bool isLoading,
  }) = _LeaderboardState;

  const LeaderboardState._();
}