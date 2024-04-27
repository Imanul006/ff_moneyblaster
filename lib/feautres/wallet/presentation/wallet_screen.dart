import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/assets.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/wallet/presentation/widgets/tabbar.dart';

import 'package:ff_moneyblaster/feautres/wallet/shared/provider.dart';
import 'package:ff_moneyblaster/theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

@RoutePage(name: 'WalletScreen')
class WalletScreen extends ConsumerWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading =
        ref.watch(walletProvider.select((state) => state.isLoading));

    return Container(
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
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.35,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Color.fromRGBO(206, 59, 59, 1),
                          Color.fromRGBO(95, 18, 55, 1),
                        ])),
                    child: Image.asset(
                      Assets.walletBannerBG,
                      scale: 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16, top: 50, bottom: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // wallet title
                          Row(
                            children: [
                              Text(
                                'WALLET',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          // 2 current wallet balance row
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                'Current Wallet Balance',
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // 3 ballance
                          Row(
                            children: [
                              Text(
                                '₹ ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '2340',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          // 4 past 24 hour money
                          Row(
                            children: [
                              Text(
                                '+ 540 PAST 24 HOURS',
                                style: Theme.of(context).textTheme.labelSmall,
                              )
                            ],
                          ),
                          // buttons deposit and withdrawl
                          const Spacer(),
                          const Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomButton(
                                text: 'Deposit',
                                icon: Icons.upload,
                              ),
                              CustomButton(
                                filled: true,
                                text: 'Withdraw',
                                icon: Icons.download,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          // tab bar
          SizedBox(
            height: 63.3.h,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TabBarWallet(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  padding: const EdgeInsets.all(16),
                  child: ListView.separated(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 45,
                        width: double.infinity,
                        decoration: customDecoration.copyWith(
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Withdrawal Request of',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  Text(
                                    ' ₹ ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: AppColors.red,
                                            fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    '530',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: AppColors.red,
                                            fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Text(
                                '4:45 PM',
                                style: Theme.of(context).textTheme.bodyMedium,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 12,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.filled = false,
    required this.text,
    required this.icon,
    super.key,
  });
  final bool filled;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: filled ? AppColors.greyText : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.greyText, width: 1),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: filled ? AppColors.red : AppColors.greyText,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: filled ? AppColors.red : AppColors.greyText,
                  ),
            )
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

/**
 *  SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppConstants.wallet.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: 'Apex',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Current Wallet Balance',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300
                          // letterSpacing: 0,
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      '₹10',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 45,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          
 */
