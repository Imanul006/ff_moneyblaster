import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:ff_moneyblaster/feautres/leaderboard/application/leaderboard_state.dart';
import 'package:riverpod/riverpod.dart';

class LeaderboardNotifier extends StateNotifier<LeaderboardState> {
  // final ILeaderboardRepository _LeaderboardRepository;

  LeaderboardNotifier(/*this._LeaderboardRepository*/)
      : super(const LeaderboardState());

  void selectTab(GameState tab) {
    // state = state.copyWith(selectedLeaderboardTab: tab);
  }
}
