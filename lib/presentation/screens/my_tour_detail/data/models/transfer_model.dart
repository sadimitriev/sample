import 'package:sample/presentation/screens/my_tour_detail/domain/entities/transfer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transfer_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, createToJson: false)
class TransferModel extends Transfer {
  const TransferModel({super.name, super.count, super.dateStartText});

  factory TransferModel.fromJson(Map<String, dynamic> json) =>
      _$TransferModelFromJson(json);
}