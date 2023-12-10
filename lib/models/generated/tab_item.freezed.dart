// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tab_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TabItem _$TabItemFromJson(Map<String, dynamic> json) {
  return _TabItem.fromJson(json);
}

/// @nodoc
mixin _$TabItem {
  int get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabItemCopyWith<TabItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabItemCopyWith<$Res> {
  factory $TabItemCopyWith(TabItem value, $Res Function(TabItem) then) =
      _$TabItemCopyWithImpl<$Res, TabItem>;
  @useResult
  $Res call({int icon, String name});
}

/// @nodoc
class _$TabItemCopyWithImpl<$Res, $Val extends TabItem>
    implements $TabItemCopyWith<$Res> {
  _$TabItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabItemImplCopyWith<$Res> implements $TabItemCopyWith<$Res> {
  factory _$$TabItemImplCopyWith(
          _$TabItemImpl value, $Res Function(_$TabItemImpl) then) =
      __$$TabItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int icon, String name});
}

/// @nodoc
class __$$TabItemImplCopyWithImpl<$Res>
    extends _$TabItemCopyWithImpl<$Res, _$TabItemImpl>
    implements _$$TabItemImplCopyWith<$Res> {
  __$$TabItemImplCopyWithImpl(
      _$TabItemImpl _value, $Res Function(_$TabItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
  }) {
    return _then(_$TabItemImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TabItemImpl with DiagnosticableTreeMixin implements _TabItem {
  const _$TabItemImpl({required this.icon, required this.name});

  factory _$TabItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabItemImplFromJson(json);

  @override
  final int icon;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabItem(icon: $icon, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabItem'))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabItemImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabItemImplCopyWith<_$TabItemImpl> get copyWith =>
      __$$TabItemImplCopyWithImpl<_$TabItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TabItemImplToJson(
      this,
    );
  }
}

abstract class _TabItem implements TabItem {
  const factory _TabItem(
      {required final int icon, required final String name}) = _$TabItemImpl;

  factory _TabItem.fromJson(Map<String, dynamic> json) = _$TabItemImpl.fromJson;

  @override
  int get icon;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TabItemImplCopyWith<_$TabItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
