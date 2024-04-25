// auth_notifier.dart

import 'package:ff_moneyblaster/feautres/auth/domain/i_auth_repository.dart';
import 'package:ff_moneyblaster/feautres/home/application/home_state.dart';
import 'package:ff_moneyblaster/feautres/home/domain/i_auth_repository.dart';
import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:riverpod/riverpod.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final IHomeRepository _homeRepository;
  
  HomeNotifier(this._homeRepository) : super(const HomeState());

  void selectTab(GameState tab) {
    state = state.copyWith(selectedHomeTab: tab);
  }
  
}
