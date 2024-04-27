import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/assets.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum GameState {
  ongoing,
  upcoming,
  past,
}

class TournamentCard extends StatefulWidget {
  const TournamentCard({super.key, required this.gameState});

  final GameState gameState;

  @override
  State<TournamentCard> createState() => _TournamentCardState();
}

class _TournamentCardState extends State<TournamentCard> {
  @override
  Widget build(BuildContext context) {
    return // Generated code for this CardTournament Widget...
        Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
      child: Container(
        width: 100,
        height: 180,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 10.6,
              color: Color(0x3F4AE5E5),
              offset: Offset(
                0,
                0,
              ),
            )
          ],
          gradient: const LinearGradient(
            colors: [
              Color(0x7FFFFFFF),
              Color(0x00FFFFFF),
              Color(0x00FFFFFF),
              Color(0x80FFFFFF)
            ],
            stops: [0, 0.1, 0.9, 1],
            begin: AlignmentDirectional(-0.34, -1),
            end: AlignmentDirectional(0.34, 1),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0x7F000000), Colors.black],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Opacity(
                    opacity: 0.6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/44dc/b1c3/adda462080a0ccdabe0649db20c8ccf2?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CVkJbpQklBNaXT1Qg3ZezJ-3xmfpADps6fYaODJ1vt3Z5jLDMZ~Iv8o4eZhop0s8Fn~w8almkyT~H3K7USkZ7ceqFELRdfr7LPA~u88pi2PuxpgZ8n9ZRNCLcTvN-VmXwKOKKLCKRPz6xL3GImhW-lvt4jYUc5Pz4eW35mX8giTpXMj-Ec0WQI6qmTPlvphSZJJuXTvQ2dEy4t2xQnRbqvD-ylwpbnreUJ~3SgVLz2TKmO2udT8zPLxXcdrGXsr0-x9lRJ-bvsnKZwrxuHvx7q5aikaFBsGOZzVLCy2HXmcC2sj88pDoJxVTkpd6IC4EtovAyRgMovUyFedj50mX~g__',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1, -1),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BGMI Cash Cup',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prize Pool',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFB6B6B6),
                                    fontSize: 10,
                                    letterSpacing: 0,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4, 0, 0, 0),
                              child: Text(
                                'Rs. 3000',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 10,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            'TPP . Sanhok . Squad',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFB6B6B6),
                                  fontSize: 10,
                                  letterSpacing: 0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 1),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: widget.gameState == GameState.ongoing
                        ? Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: buildButton(
                                      context,
                                      'Watch Live',
                                      const Color(0xFFCF3A3A),
                                      const Color(0xFF9D0000)),
                                ),
                              ),
                            ],
                          )
                        : widget.gameState == GameState.past
                            ? Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: buildButton(
                                          context,
                                          'Result',
                                          const Color(0xFF0051EF),
                                          const Color(0xFF0051EF)),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: buildButton(
                                          context,
                                          'Watch Live',
                                          const Color(0xFFCF3A3A),
                                          const Color(0xFF9D0000)),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet<void>(
                                          backgroundColor: AppColors.glassColor,
                                          barrierColor: const Color.fromRGBO(
                                              7, 7, 7, 0.7),
                                          context: context,
                                          builder: (BuildContext context) {
                                            return JoinTournamamentWidget();
                                          },
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4),
                                        child: buildButton(
                                            context,
                                            'Join',
                                            const Color(0xFF11BDBD),
                                            const Color(0xFF006262)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1, 0.2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(8, 4, 4, 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Per Kill: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 10,
                                      letterSpacing: 0,
                                    ),
                              ),
                              Text(
                                '₹10',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 10,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0x67B70000),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(4),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(4),
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(8, 4, 4, 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Entry Fee: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 10,
                                      letterSpacing: 0,
                                    ),
                              ),
                              Text(
                                '₹1000',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 10,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1, -1),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 8, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Date: ',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 10,
                                    letterSpacing: 0,
                                  ),
                        ),
                        Text(
                          '26/05/24',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 10,
                                    letterSpacing: 0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'MATCH STARTED',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Oswald',
                                    color: Colors.white,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            '00.13.25',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 16,
                                  letterSpacing: 1.6,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 12,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'HR',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 8,
                                      letterSpacing: 0,
                                    ),
                              ),
                              Text(
                                'MIN',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 8,
                                      letterSpacing: 0,
                                    ),
                              ),
                              Text(
                                'SEC',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 8,
                                      letterSpacing: 0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(
      BuildContext context, String text, Color startColor, Color endColor) {
    return Container(
      height: 34,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          stops: [0, 1],
          begin: const AlignmentDirectional(-1, 0),
          end: const AlignmentDirectional(1, 0),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0, 0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontFamily: 'Readex Pro',
                color: Colors.white,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}

class JoinTournamamentWidget extends StatelessWidget {
  const JoinTournamamentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              Assets.tournamentJoining,
              scale: 2,
            )),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.5,
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
                      'FF Cash Cup',
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
                SizedBox(
                  height: 12,
                ),
                // prize pool | per kill | entry fee
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Prize Pool',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '₹3000',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: AppColors.blue),
                        ),
                      ],
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      color: AppColors.glassColor,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Per Kill',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '₹10',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      color: AppColors.glassColor,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entry Fee',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '₹100',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // map details
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      // width: 66,
                      // height: 22,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      margin: const EdgeInsets.only(
                        right: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0x68FFFFFF),
                        borderRadius: BorderRadius.circular(35),
                        shape: BoxShape.rectangle,
                      ),
                      alignment: AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Erangle',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: 66,
                      // height: 22,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      margin: const EdgeInsets.only(
                        right: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0x68FFFFFF),
                        borderRadius: BorderRadius.circular(35),
                        shape: BoxShape.rectangle,
                      ),
                      alignment: AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'FPP',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: 66,
                      // height: 22,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      margin: const EdgeInsets.only(
                        right: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0x68FFFFFF),
                        borderRadius: BorderRadius.circular(35),
                        shape: BoxShape.rectangle,
                      ),
                      alignment: AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Squad',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // match starts in
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'match starts in : 01 hr 45 min 32 sec',
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
                //const Spacer(),
                const SizedBox(
                  height: 32,
                ),
                // wallet details
                // proceed
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You have ',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text('₹2340',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.blue,
                                    )),
                        Text(
                          ' in your wallet',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
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
                  ],
                )
              ],
            ),
          ),
        ),
        // Positioned(
        //     top: 100,
        //     child: Image.asset(
        //       Assets.tournamentJoining,
        //       scale: 2,
        //     )),
      ],
    );
  }
}
