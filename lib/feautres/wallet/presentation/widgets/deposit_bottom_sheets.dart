import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/assets.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/wallet/application/wallet_notifier.dart';
import 'package:ff_moneyblaster/feautres/wallet/shared/provider.dart';
import 'package:ff_moneyblaster/theme.dart';
import 'package:ff_moneyblaster/widgets/app_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DepositBottomSheet extends ConsumerStatefulWidget {
  const DepositBottomSheet({
    super.key,
  });

  @override
  ConsumerState<DepositBottomSheet> createState() => _DepositBottomSheetState();
}

class _DepositBottomSheetState extends ConsumerState<DepositBottomSheet> {
  bool _isForm = false;

  TextEditingController _transactionIdController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final notifier = ref.watch(walletProvider.notifier);
      await notifier.getQr();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(walletProvider.notifier);
    final state = ref.watch(walletProvider);
    final FirebaseAuth auth = FirebaseAuth.instance;
    final uid = auth.currentUser!.uid;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            decoration: customDecoration.copyWith(
                color: AppColors.popUpColor,
                borderRadius: BorderRadius.circular(20)),
            child: _isForm
                ? depositForm(
                    context,
                  )
                : depositQR(context),
          ),
        ],
      ),
    );
  }

  Widget depositQR(BuildContext context) {
    final state = ref.watch(walletProvider);
    const String qrCodeUrl =
        "https://via.placeholder.com/500x500.png/a59090/000000?Text=500x500";
    const String upiId = "9876543210@okaxis";
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Deposit Money",
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
          height: 24,
        ),
        Container(
          // height: MediaQuery.of(context).size.width * 0.5,
          // width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Image.network(
              state.qr?.qrImage ?? qrCodeUrl,
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "Scan QR",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontFamily: 'Readex Pro',
                color: Colors.white,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "OR",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontFamily: 'Readex Pro',
                color: Colors.white,
                letterSpacing: 0,
                fontWeight: FontWeight.w300,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "Copy Below UPI ID",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontFamily: 'Readex Pro',
                color: Colors.white,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 12,
        ),
        _UpiField(
          upiId: state.qr?.upiId ?? upiId,
        ),
        const SizedBox(
          height: 38,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isForm = true;
            });
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
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }

  Widget depositForm(BuildContext context) {
    final notifier = ref.read(walletProvider.notifier);
    final state = ref.read(walletProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Deposit Money",
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
          hintText: "Transaction ID",
          controller: _transactionIdController,
          title: "Enter Transaction ID",
        ),
        const SizedBox(
          height: 8,
        ),
        AppTextField(
          hintText: "Deposit Amount",
          controller: _amountController,
          keyboardType: TextInputType.number,
          title: "Enter Deposit Amount",
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
              onTap: () async {
                if (_transactionIdController.text.isNotEmpty &&
                    _amountController.text.isNotEmpty) {
                  await notifier.requestDeposit(
                    context,
                    transactionId:
                        _transactionIdController.text.toLowerCase().trim(),
                    amount: double.parse(_amountController.text),
                  );
                  await notifier.fetchUserDetails();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'All fields are mandatory.',
                      ),
                      duration: Duration(seconds: 3),
                    ),
                  );
                }
                if (context.mounted) {
                  context.maybePop();
                }
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
                  child: state.isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : Text(
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
    );
  }
}

class _UpiField extends StatelessWidget {
  final String upiId;

  const _UpiField({
    Key? key,
    required this.upiId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _idField(context)),
        const SizedBox(
          width: 20,
        ),
        _copyButton(context),
      ],
    );
  }

  Widget _copyButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FlutterClipboard.copy(upiId)
            .then((value) => Fluttertoast.showToast(msg: 'UPI ID Copied.'));
      },
      child: SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/textfield.png",
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.copy,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _idField(BuildContext context) {
    return SizedBox(
      height: 50,
      // width: MediaQuery.of(context).size.width * 0.6,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/textfield.png",
            // width: MediaQuery.of(context).size.width * 0.6,
            height: 50,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  upiId, // Displaying the UPI ID
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                      ), // Example text style
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
