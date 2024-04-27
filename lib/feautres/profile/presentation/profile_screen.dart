import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/assets.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/wallet/presentation/widgets/tabbar.dart';

import 'package:ff_moneyblaster/feautres/wallet/shared/provider.dart';
import 'package:ff_moneyblaster/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:sizer/sizer.dart';

@RoutePage(name: 'ProfileScreen')
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
              height: MediaQuery.sizeOf(context).height * 0.15,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(206, 59, 59, 1),
                        Color.fromRGBO(95, 18, 55, 1),
                      ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16, top: 50, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'PROFILE',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          const ProfileTaB(),
          const SizedBox(
            height: 20,
          ),
          // tab bar
          Container(
            height: 70.h,
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SingleChildScrollView(
              primary: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              border: GradientBoxBorder(
                                width: 5,
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(206, 59, 59, 1),
                                  Color.fromRGBO(95, 18, 55, 1),
                                ]),
                              ),
                            ),
                            child: Image.asset(
                              Assets.profileImg,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Skyrider007',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Member since 24.04.24',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            Assets.edit,
                            scale: 2,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // player stats
                  Container(
                    width: double.infinity,
                    // height: 240,
                    padding: const EdgeInsets.all(16),
                    decoration: customDecoration.copyWith(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 1 total winning
                        Text(
                          'TOTAL WININGS',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        // 2 money
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '₹ 3000',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32,
                                      color: AppColors.blue),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // 3 matches played
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Matches Played',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              '35',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        // 4 matches won
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Matches Won',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              '5',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        // kills
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Kills',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              '100',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // info
                  const SizedBox(
                    height: 20,
                  ),
                  PlayerDetailInfo(
                    title: 'Game ID',
                    value: 'IFFS2034SNERRR1',
                  ),
                  PlayerDetailInfo(
                    title: 'Phone Number',
                    value: '32484928429',
                  ),
                  PlayerDetailInfo(
                    title: 'UPI ID',
                    value: '23424x@okicici',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlayerDetailInfo extends StatelessWidget {
  const PlayerDetailInfo({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration:
              customDecoration.copyWith(borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Row(
              children: [
                Text(
                  value,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.greyLight),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
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
