import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/assets.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/wallet/shared/provider.dart';
import 'package:ff_moneyblaster/theme.dart';
import 'package:ff_moneyblaster/widgets/app_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WithdrawBottomSheet extends ConsumerStatefulWidget {
  const WithdrawBottomSheet({
    super.key,
  });

  @override
  ConsumerState<WithdrawBottomSheet> createState() =>
      _WithdrawBottomSheetState();
}

class _WithdrawBottomSheetState extends ConsumerState<WithdrawBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(walletProvider.notifier);
    final state = ref.read(walletProvider);
    final FirebaseAuth auth = FirebaseAuth.instance;
    final uid = auth.currentUser!.uid;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: customDecoration.copyWith(
              color: AppColors.popUpColor,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1 title and x
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Withdraw Money",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.maybePop();
                    },
                    child: Image.asset(
                      Assets.close,
                      scale: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              AppTextField(
                hintText: "Full Name",
                controller: TextEditingController(),
                title: "Enter Full Name",
              ),
              const SizedBox(
                height: 8,
              ),
              AppTextField(
                hintText: "Account Number",
                controller: TextEditingController(),
                title: "Enter Account Number",
              ),
              const SizedBox(
                height: 8,
              ),
              AppTextField(
                hintText: "IFSC Code",
                controller: TextEditingController(),
                title: "Enter IFSC Code",
              ),
              const SizedBox(
                height: 8,
              ),
              AppTextField(
                hintText: "Withdraw Amount",
                controller: TextEditingController(),
                title: "Enter Withdraw Amount",
              ),
              const SizedBox(
                height: 22,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.maybePop();
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(206, 59, 59, 1),
                              Color.fromRGBO(95, 18, 55, 1),
                            ]),
                      ),
                      child: Center(
                        child: Text(
                          'Proceed',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
