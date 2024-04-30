// auth_notifier.dart

import 'package:ff_moneyblaster/feautres/home/application/home_state.dart';
import 'package:ff_moneyblaster/feautres/home/domain/i_home_repository.dart';
import 'package:ff_moneyblaster/feautres/home/domain/tournament.dart';
import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:intl/intl.dart';
import 'package:riverpod/riverpod.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final IHomeRepository _homeRepository;
  
  HomeNotifier(this._homeRepository) : super(const HomeState()) {
    fetchTournaments();
  }

  void selectTab(GameState tab) {
    state = state.copyWith(selectedHomeTab: tab);
  }

  int getDifferenceInMilliseconds(DateTime inputTime) {
  DateTime currentTime = DateTime.now();
  Duration difference = currentTime.difference(inputTime);
  return difference.inMilliseconds;
}

bool isLessThan24Hours(DateTime dateTime) {
  DateTime now = DateTime.now();
  int differenceInMilliseconds = now.difference(dateTime).inMilliseconds.abs();
  int twentyFourHoursInMilliseconds = Duration(hours: 24).inMilliseconds;
  bool isLess = differenceInMilliseconds < twentyFourHoursInMilliseconds;
  DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  String formatted = formatter.format(dateTime);
  print(formatted);

  return isLess;
}
  

  Future<void> fetchTournaments() async {
    state = state.copyWith(isLoading: true);
    try {
      List<Tournament> tournaments = await _homeRepository.getTournaments();
      state = state.copyWith(tournaments: tournaments, isLoading: false);
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString(), isLoading: false);
    }
  }
  
}
