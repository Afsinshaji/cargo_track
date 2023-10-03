import 'package:json_annotation/json_annotation.dart';

part 'add_reweight.g.dart';

@JsonSerializable()
class AddReweight {
  @JsonKey(name: 'goods_id')
  String? goodsId;
  int? rewight;

  AddReweight({this.goodsId, this.rewight});

  factory AddReweight.fromJson(Map<String, dynamic> json) {
    return _$AddReweightFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddReweightToJson(this);
}
