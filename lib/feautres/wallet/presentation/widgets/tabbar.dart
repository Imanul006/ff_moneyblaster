import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:ff_moneyblaster/feautres/home/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants.dart';
import 'gradient_border_container_text.dart';

class TabBarWallet extends ConsumerWidget {
  const TabBarWallet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);

    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => ref.read(homeProvider.notifier).selectTab(GameState.ongoing),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: GradientBorderContainerText(
                  width: double.infinity,
                  height: 48,
                  radius: 0.0,
                  child: 'Deposit',
                  colors: AppColors.tabBorder,
                  isActive: homeState.selectedHomeTab == GameState.ongoing,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => ref.read(homeProvider.notifier).selectTab(GameState.upcoming),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: GradientBorderContainerText(
                  width: double.infinity,
                  height: 48,
                  radius: 0.0,
                  child: 'Withdrawal',
                  colors: AppColors.tabBorder,
                  isActive: homeState.selectedHomeTab == GameState.upcoming,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
