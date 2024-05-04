import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/assets.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/home/domain/tournament.dart';

import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tabbar.dart';
import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:ff_moneyblaster/feautres/home/shared/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sizer/sizer.dart';

import 'widgets/gradient_border_container.dart';

@RoutePage(name: 'HomeScreen')
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void dispose() {
    final provider = ref.read(homeProvider.notifier);
    provider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(homeProvider.select((state) => state.isLoading));
    final homeState = ref.watch(homeProvider);
    final provider = ref.read(homeProvider.notifier);

    List<Tournament> ongoingTournaments = homeState.tournaments
        .where((tournament) =>
            provider.getDifferenceInMilliseconds(tournament.dateTime!) > 0 &&
            (tournament.result == null))
        .toList();
    List<Tournament> upcomingTournaments = homeState.tournaments
        .where((tournament) =>
            provider.getDifferenceInMilliseconds(tournament.dateTime!) <= 0)
        .toList();
    List<Tournament> pastTournaments = homeState.tournaments
        .where((tournament) =>
            provider.getDifferenceInMilliseconds(tournament.dateTime!) > 0 &&
            tournament.result != null)
        .toList();

    return SafeArea(
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 1,
        decoration: BoxDecoration(
          color: AppColors.blackBackground,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/bg.png',
            ).image,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.22,
              decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 2.1,
                  image: Image.asset(
                    Assets.backgroundLeaderboard,
                    fit: BoxFit.contain,
                  ).image,
                ),
                gradient: const LinearGradient(
                  colors: [Color(0xFFCE3B3B), Color(0xFF5F1237)],
                  stops: [0, 1],
                  begin: AlignmentDirectional(-1, 0),
                  end: AlignmentDirectional(1, 0),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // silver
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 32, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/icons/silver.png',
                            width: 20,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 58,
                          height: 58,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: GradientBorderContainer(
                                width: double.infinity,
                                height: double.infinity,
                                radius: 8.0,
                                colors: AppColors.silverGradientBorder,
                                child:
                                    'https://media.wired.com/photos/5b17381815b2c744cb650b5f/master/w_2560%2Cc_limit/GettyImages-134367495.jpg',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: Text(
                            'Techno Frank',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 9,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                        Text(
                          '₹800',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 8,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  // gold
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/icons/gold.png',
                          width: 31,
                          height: 36,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 74,
                        height: 74,
                        decoration: const BoxDecoration(),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: GradientBorderContainer(
                              width: double.infinity,
                              height: double.infinity,
                              radius: 8.0,
                              colors: AppColors.goldGradientBorder,
                              child:
                                  'https://media.wired.com/photos/5b17381815b2c744cb650b5f/master/w_2560%2Cc_limit/GettyImages-134367495.jpg',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                        child: Text(
                          'MadMAx#',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 12,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Text(
                        '₹3200',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  //silver
                  // Generated code for this Column Widget...
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(32, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/icons/bronze.png',
                            width: 20,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: const BoxDecoration(),
                          child: const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: GradientBorderContainer(
                                width: double.infinity,
                                height: double.infinity,
                                radius: 8.0,
                                colors: AppColors.bronzeGradientBorder,
                                child:
                                    'https://media.wired.com/photos/5b17381815b2c744cb650b5f/master/w_2560%2Cc_limit/GettyImages-134367495.jpg',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: Text(
                            'SahilKiller',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 9,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Text(
                          '₹300',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 8,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // tab bar
            SizedBox(
              height: 63.3.h,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TabBarHome(),
                  const Filter(),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: 50.h,
                      child: homeState.isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : homeState.errorMessage.isNotEmpty
                              ? Text("Error: ${homeState.errorMessage}")
                              : SmartRefresher(
                                  enablePullDown: true,
                                  controller: provider.refreshController,
                                  onRefresh: () {
                                    provider.onRefresh();
                                  },
                                  onLoading: () {
                                    provider.onLoading();
                                  },
                                  child: ListView.separated(
                                      controller: provider.scrollController,
                                      shrinkWrap: true,
                                      itemCount: homeState.selectedHomeTab ==
                                              GameState.upcoming
                                          ? upcomingTournaments.length
                                          : homeState.selectedHomeTab ==
                                                  GameState.ongoing
                                              ? ongoingTournaments.length
                                              : pastTournaments.length,
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const SizedBox(height: 10),
                                      itemBuilder: (context, index) {
                                        return homeState.selectedHomeTab ==
                                                GameState.upcoming
                                            ? TournamentCard(
                                                isLessThan24Hours:
                                                    provider.isLessThan24Hours(
                                                        upcomingTournaments[
                                                                index]
                                                            .dateTime!),
                                                gameState:
                                                    homeState.selectedHomeTab,
                                                tournament:
                                                    upcomingTournaments[index],
                                              )
                                            : homeState.selectedHomeTab ==
                                                    GameState.ongoing
                                                ? TournamentCard(
                                                    isLessThan24Hours: provider
                                                        .isLessThan24Hours(
                                                            ongoingTournaments[
                                                                    index]
                                                                .dateTime!),
                                                    gameState: homeState
                                                        .selectedHomeTab,
                                                    tournament:
                                                        ongoingTournaments[
                                                            index],
                                                  )
                                                : TournamentCard(
                                                    isLessThan24Hours: provider
                                                        .isLessThan24Hours(
                                                            pastTournaments[
                                                                    index]
                                                                .dateTime!),
                                                    gameState: homeState
                                                        .selectedHomeTab,
                                                    tournament:
                                                        pastTournaments[index],
                                                  );
                                      }),
                                ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Filter extends StatelessWidget {
  const Filter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Filters',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                Assets.filter,
                scale: 2,
              ))
        ],
      ),
    );
  }
}
