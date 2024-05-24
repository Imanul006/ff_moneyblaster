import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_model.freezed.dart';
part 'qr_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class QrModel with _$QrModel {
  const factory QrModel({
    required String uid,
    required String qrImage,
    required String upiId,
    required bool isDefault,
    dynamic createdAt,
  }) = _QrModel;

  factory QrModel.fromJson(Map<String, dynamic> json) =>
      _$QrModelFromJson(json);
}
