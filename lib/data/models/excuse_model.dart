import 'package:freezed_annotation/freezed_annotation.dart';

part 'excuse_model.freezed.dart';
part 'excuse_model.g.dart';

@freezed
class ExcuseModel with _$ExcuseModel {
  const factory ExcuseModel({
    int? id,
    String? excuse,
    String? category,
  }) = _ExcuseModel;

  factory ExcuseModel.fromJson(Map<String, dynamic> json) =>
      _$ExcuseModelFromJson(json);
}

class ExcuseModelResults {
  List<ExcuseModel>? excuses;

  ExcuseModelResults.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      excuses = <ExcuseModel>[];
      json['results'].forEach(
        (v) {
          excuses!.add(ExcuseModel.fromJson(v));
        },
      );
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (excuses != null) {
      data['results'] = excuses!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
