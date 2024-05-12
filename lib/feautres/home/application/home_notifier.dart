// auth_notifier.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:ff_moneyblaster/feautres/home/application/home_state.dart';
import 'package:ff_moneyblaster/feautres/home/domain/i_home_repository.dart';
import 'package:ff_moneyblaster/feautres/home/domain/tournament.dart';
import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:riverpod/riverpod.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final IHomeRepository _homeRepository;

  HomeNotifier(
    this._homeRepository,
  ) : super(const HomeState()) {
    fetchTournaments();
    updateStateTopUsers();
  }
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  ScrollController scrollController = ScrollController();

  void dispose() async {
    scrollController.dispose();
    refreshController.dispose();
  }

  void updateStateTopUsers() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('appusers')
        .orderBy('gameStats.totalWinAmount', descending: true)
        .limit(3)
        .get();

    List<UserModel> topUsers = [];
    for (var doc in querySnapshot.docs) {
      topUsers.add(UserModel.fromJson(doc.data() as Map<String, dynamic>));
    }

    state = state.copyWith(topUsers: topUsers);
  }

  void onRefresh() async {
    // monitor network fetch
    // Store current scroll position
    double _scrollPosition = scrollController.position.pixels;
    if (mounted) await fetchTournaments();
    // if failed,use refreshFailed()
    refreshController.refreshCompleted();
    // scrollController.jumpTo(_scrollPosition);
  }

  void onLoading() async {
    // monitor network fetch
    double _scrollPosition = scrollController.position.pixels;

    // if failed,use loadFailed(),if no data return,use LoadNodata()

    refreshController.loadComplete();
    // scrollController.jumpTo(_scrollPosition);
  }

  void selectTab(GameState tab) {
    state = state.copyWith(selectedHomeTab: tab);
  }

  void selectProfileTab(ProfileTabState tab) {
    state = state.copyWith(selectedProfileTab: tab);
  }

  int getDifferenceInMilliseconds(DateTime inputTime) {
    DateTime currentTime = DateTime.now();
    Duration difference = currentTime.difference(inputTime);
    return difference.inMilliseconds;
  }

  bool isLessThan24Hours(DateTime dateTime) {
    DateTime now = DateTime.now();
    int differenceInMilliseconds =
        now.difference(dateTime).inMilliseconds.abs();
    int twentyFourHoursInMilliseconds =
        const Duration(hours: 24).inMilliseconds;
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
      print('ftched tournaments successfully');
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString(), isLoading: false);
    }
  }

  Future<void> selectTournament(Tournament t) async {
    state = state.copyWith(selectedTournament: t);
    debugPrint(t.uid);
  }

  Future<void> registerForTournament(Tournament t) async {
    state = state.copyWith(isLoading: true);
    try {
      final tournament = await _homeRepository.registerForTournament(
          tournamentId: state.selectedTournament!.uid!);
      await fetchTournaments();
      // state = state.copyWith(selectedTournament: t);
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString(), isLoading: false);
    }
  }

  Future<void> drawWallet(int val) async {
    state = state.copyWith(isLoading: true);
    try {
      final tournament = await _homeRepository.drawWallet(val: val);
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString(), isLoading: false);
    }
  }
}
