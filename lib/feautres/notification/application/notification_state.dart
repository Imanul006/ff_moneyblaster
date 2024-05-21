import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:ff_moneyblaster/feautres/home/presentation/widgets/tournament_card.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(false) bool isLoading,
    @Default([]) List<Map<String, dynamic>> notifications,
  }) = _NotificationState;

  const NotificationState._();
}
