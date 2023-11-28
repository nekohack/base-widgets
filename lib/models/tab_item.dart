import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_item.freezed.dart';
part 'tab_item.g.dart';

@freezed
class TabItem with _$TabItem {
  const factory TabItem({
    required int icon,
    required String name,
  }) = _TabItem;

  factory TabItem.fromJson(Map<String, dynamic> json)
    => _$TabItemFromJson(json);
}