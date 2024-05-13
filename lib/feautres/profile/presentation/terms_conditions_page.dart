import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// Adjust the path as necessary

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/core/assets.dart';
import 'package:ff_moneyblaster/core/constants.dart';

import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tabbar.dart';
import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:ff_moneyblaster/feautres/leaderboard/shared/provider.dart';
import 'package:ff_moneyblaster/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:sizer/sizer.dart';

import '../../auth/domain/user_model.dart';

class TermsConditionsPage extends ConsumerWidget {
  const TermsConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.15,
                decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   scale: 2.1,
                  //   image: Image.asset(
                  //     Assets.backgroundLeaderboard,
                  //     fit: BoxFit.contain,
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
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                        child: Text(
                          'TERMS & CONDITIONS',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // tab bar
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terms and Conditions for Money Blaster Tournament Application:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '1. Eligibility:\n'
                      'Participants must meet the age 18 year old and residency requirements specified in their respective jurisdictions to participate in Money Blaster Tournament.\n'
                      'Players must adhere to the rules and regulations of the games (PUBG and FF) as outlined by the game developers.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '2. Entry Fee:\n'
                      '• All players must pay the designated entry fee to participate in the tournament.\n'
                      'Entry fees are non-refundable, and failure to join the tournament on time will result in forfeiture of the entry fee.',
                      style: TextStyle(fontSize: 16),
                    ),
                    // Add other terms as needed
                    SizedBox(height: 16),
                    Text(
                      '7. Technical Faults:\n'
                      'In the event of a match being halted due to technical faults or issues on our end, the entry fee will be refunded to the players\' accounts.\n'
                      '• Refunds will be processed promptly, and players will be notified accordingly.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '8. General:\n'
                      'Money Blaster Tournament reserves the right to amend the terms and conditions at any time without prior notice.\n'
                      'Participants are responsible for ensuring they have the necessary equipment and internet connection to participate in the tournament.\n'
                      'By participating in Money Blaster Tournament, players agree to abide by all rules and regulations outlined in these terms and conditions.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
