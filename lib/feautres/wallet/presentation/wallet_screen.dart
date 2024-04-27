import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/assets.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/wallet/presentation/widgets/custom_listtile.dart';
import 'package:ff_moneyblaster/feautres/wallet/presentation/widgets/tabbar.dart';

import 'package:ff_moneyblaster/feautres/wallet/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'widgets/gradient_border_container.dart';

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
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.3,
            decoration: const BoxDecoration(
              // image: DecorationImage(

              //   image: Image.asset(
              //     Assets.headerOverlayGeneral,
              //     fit: BoxFit.fitWidth,
              //   ).image,
              // ),
              gradient: LinearGradient(
                colors: [Color(0xFFCE3B3B), Color(0xFF5F1237)],
                stops: [0, 1],
                begin: AlignmentDirectional(-1, 0),
                end: AlignmentDirectional(1, 0),
              ),
            ),
            child: SafeArea(
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
          ),
          // tab bar
          SizedBox(
            height: 63.3.h,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TabBarWallet(),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10, // for example, the number of items
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 15),
                        child: CustomListTile(title: 'fbsfbsb', subtitle: 'bsbssb', trailingText: 'dbbdd',),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
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
