// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_panel_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminPanelEventTearOff {
  const _$AdminPanelEventTearOff();

  ShowDashboard showDashboard() {
    return ShowDashboard();
  }
}

/// @nodoc
const $AdminPanelEvent = _$AdminPanelEventTearOff();

/// @nodoc
mixin _$AdminPanelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showDashboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowDashboard value) showDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowDashboard value)? showDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowDashboard value)? showDashboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminPanelEventCopyWith<$Res> {
  factory $AdminPanelEventCopyWith(
          AdminPanelEvent value, $Res Function(AdminPanelEvent) then) =
      _$AdminPanelEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminPanelEventCopyWithImpl<$Res>
    implements $AdminPanelEventCopyWith<$Res> {
  _$AdminPanelEventCopyWithImpl(this._value, this._then);

  final AdminPanelEvent _value;
  // ignore: unused_field
  final $Res Function(AdminPanelEvent) _then;
}

/// @nodoc
abstract class $ShowDashboardCopyWith<$Res> {
  factory $ShowDashboardCopyWith(
          ShowDashboard value, $Res Function(ShowDashboard) then) =
      _$ShowDashboardCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowDashboardCopyWithImpl<$Res>
    extends _$AdminPanelEventCopyWithImpl<$Res>
    implements $ShowDashboardCopyWith<$Res> {
  _$ShowDashboardCopyWithImpl(
      ShowDashboard _value, $Res Function(ShowDashboard) _then)
      : super(_value, (v) => _then(v as ShowDashboard));

  @override
  ShowDashboard get _value => super._value as ShowDashboard;
}

/// @nodoc

class _$ShowDashboard implements ShowDashboard {
  _$ShowDashboard();

  @override
  String toString() {
    return 'AdminPanelEvent.showDashboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowDashboard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showDashboard,
  }) {
    return showDashboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showDashboard,
  }) {
    return showDashboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showDashboard,
    required TResult orElse(),
  }) {
    if (showDashboard != null) {
      return showDashboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowDashboard value) showDashboard,
  }) {
    return showDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowDashboard value)? showDashboard,
  }) {
    return showDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowDashboard value)? showDashboard,
    required TResult orElse(),
  }) {
    if (showDashboard != null) {
      return showDashboard(this);
    }
    return orElse();
  }
}

abstract class ShowDashboard implements AdminPanelEvent {
  factory ShowDashboard() = _$ShowDashboard;
}
