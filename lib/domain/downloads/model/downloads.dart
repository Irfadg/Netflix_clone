import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class DownloadsModel with _$DownloadsModel {
  const factory DownloadsModel({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _DownloadsModel;

  factory DownloadsModel.fromJson(Map<String, dynamic> json) => _$DownloadsModelFromJson(json);
}
