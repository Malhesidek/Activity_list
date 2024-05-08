// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List? image) changedImage,
    required TResult Function(String? title) changedTitle,
    required TResult Function(String? description) changedDescription,
    required TResult Function(TimeOfDay? time) changedTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List? image)? changedImage,
    TResult? Function(String? title)? changedTitle,
    TResult? Function(String? description)? changedDescription,
    TResult? Function(TimeOfDay? time)? changedTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List? image)? changedImage,
    TResult Function(String? title)? changedTitle,
    TResult Function(String? description)? changedDescription,
    TResult Function(TimeOfDay? time)? changedTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedImage value) changedImage,
    required TResult Function(_ChangedTitle value) changedTitle,
    required TResult Function(_ChangedDescription value) changedDescription,
    required TResult Function(_ChangedTime value) changedTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedImage value)? changedImage,
    TResult? Function(_ChangedTitle value)? changedTitle,
    TResult? Function(_ChangedDescription value)? changedDescription,
    TResult? Function(_ChangedTime value)? changedTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedImage value)? changedImage,
    TResult Function(_ChangedTitle value)? changedTitle,
    TResult Function(_ChangedDescription value)? changedDescription,
    TResult Function(_ChangedTime value)? changedTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEditEventCopyWith<$Res> {
  factory $ActivityEditEventCopyWith(
          ActivityEditEvent value, $Res Function(ActivityEditEvent) then) =
      _$ActivityEditEventCopyWithImpl<$Res, ActivityEditEvent>;
}

/// @nodoc
class _$ActivityEditEventCopyWithImpl<$Res, $Val extends ActivityEditEvent>
    implements $ActivityEditEventCopyWith<$Res> {
  _$ActivityEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangedImageImplCopyWith<$Res> {
  factory _$$ChangedImageImplCopyWith(
          _$ChangedImageImpl value, $Res Function(_$ChangedImageImpl) then) =
      __$$ChangedImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List? image});
}

/// @nodoc
class __$$ChangedImageImplCopyWithImpl<$Res>
    extends _$ActivityEditEventCopyWithImpl<$Res, _$ChangedImageImpl>
    implements _$$ChangedImageImplCopyWith<$Res> {
  __$$ChangedImageImplCopyWithImpl(
      _$ChangedImageImpl _value, $Res Function(_$ChangedImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$ChangedImageImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$ChangedImageImpl implements _ChangedImage {
  const _$ChangedImageImpl({this.image});

  @override
  final Uint8List? image;

  @override
  String toString() {
    return 'ActivityEditEvent.changedImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedImageImpl &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedImageImplCopyWith<_$ChangedImageImpl> get copyWith =>
      __$$ChangedImageImplCopyWithImpl<_$ChangedImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List? image) changedImage,
    required TResult Function(String? title) changedTitle,
    required TResult Function(String? description) changedDescription,
    required TResult Function(TimeOfDay? time) changedTime,
  }) {
    return changedImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List? image)? changedImage,
    TResult? Function(String? title)? changedTitle,
    TResult? Function(String? description)? changedDescription,
    TResult? Function(TimeOfDay? time)? changedTime,
  }) {
    return changedImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List? image)? changedImage,
    TResult Function(String? title)? changedTitle,
    TResult Function(String? description)? changedDescription,
    TResult Function(TimeOfDay? time)? changedTime,
    required TResult orElse(),
  }) {
    if (changedImage != null) {
      return changedImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedImage value) changedImage,
    required TResult Function(_ChangedTitle value) changedTitle,
    required TResult Function(_ChangedDescription value) changedDescription,
    required TResult Function(_ChangedTime value) changedTime,
  }) {
    return changedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedImage value)? changedImage,
    TResult? Function(_ChangedTitle value)? changedTitle,
    TResult? Function(_ChangedDescription value)? changedDescription,
    TResult? Function(_ChangedTime value)? changedTime,
  }) {
    return changedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedImage value)? changedImage,
    TResult Function(_ChangedTitle value)? changedTitle,
    TResult Function(_ChangedDescription value)? changedDescription,
    TResult Function(_ChangedTime value)? changedTime,
    required TResult orElse(),
  }) {
    if (changedImage != null) {
      return changedImage(this);
    }
    return orElse();
  }
}

abstract class _ChangedImage implements ActivityEditEvent {
  const factory _ChangedImage({final Uint8List? image}) = _$ChangedImageImpl;

  Uint8List? get image;
  @JsonKey(ignore: true)
  _$$ChangedImageImplCopyWith<_$ChangedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedTitleImplCopyWith<$Res> {
  factory _$$ChangedTitleImplCopyWith(
          _$ChangedTitleImpl value, $Res Function(_$ChangedTitleImpl) then) =
      __$$ChangedTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$$ChangedTitleImplCopyWithImpl<$Res>
    extends _$ActivityEditEventCopyWithImpl<$Res, _$ChangedTitleImpl>
    implements _$$ChangedTitleImplCopyWith<$Res> {
  __$$ChangedTitleImplCopyWithImpl(
      _$ChangedTitleImpl _value, $Res Function(_$ChangedTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$ChangedTitleImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangedTitleImpl implements _ChangedTitle {
  const _$ChangedTitleImpl({this.title});

  @override
  final String? title;

  @override
  String toString() {
    return 'ActivityEditEvent.changedTitle(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedTitleImplCopyWith<_$ChangedTitleImpl> get copyWith =>
      __$$ChangedTitleImplCopyWithImpl<_$ChangedTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List? image) changedImage,
    required TResult Function(String? title) changedTitle,
    required TResult Function(String? description) changedDescription,
    required TResult Function(TimeOfDay? time) changedTime,
  }) {
    return changedTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List? image)? changedImage,
    TResult? Function(String? title)? changedTitle,
    TResult? Function(String? description)? changedDescription,
    TResult? Function(TimeOfDay? time)? changedTime,
  }) {
    return changedTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List? image)? changedImage,
    TResult Function(String? title)? changedTitle,
    TResult Function(String? description)? changedDescription,
    TResult Function(TimeOfDay? time)? changedTime,
    required TResult orElse(),
  }) {
    if (changedTitle != null) {
      return changedTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedImage value) changedImage,
    required TResult Function(_ChangedTitle value) changedTitle,
    required TResult Function(_ChangedDescription value) changedDescription,
    required TResult Function(_ChangedTime value) changedTime,
  }) {
    return changedTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedImage value)? changedImage,
    TResult? Function(_ChangedTitle value)? changedTitle,
    TResult? Function(_ChangedDescription value)? changedDescription,
    TResult? Function(_ChangedTime value)? changedTime,
  }) {
    return changedTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedImage value)? changedImage,
    TResult Function(_ChangedTitle value)? changedTitle,
    TResult Function(_ChangedDescription value)? changedDescription,
    TResult Function(_ChangedTime value)? changedTime,
    required TResult orElse(),
  }) {
    if (changedTitle != null) {
      return changedTitle(this);
    }
    return orElse();
  }
}

abstract class _ChangedTitle implements ActivityEditEvent {
  const factory _ChangedTitle({final String? title}) = _$ChangedTitleImpl;

  String? get title;
  @JsonKey(ignore: true)
  _$$ChangedTitleImplCopyWith<_$ChangedTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedDescriptionImplCopyWith<$Res> {
  factory _$$ChangedDescriptionImplCopyWith(_$ChangedDescriptionImpl value,
          $Res Function(_$ChangedDescriptionImpl) then) =
      __$$ChangedDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$ChangedDescriptionImplCopyWithImpl<$Res>
    extends _$ActivityEditEventCopyWithImpl<$Res, _$ChangedDescriptionImpl>
    implements _$$ChangedDescriptionImplCopyWith<$Res> {
  __$$ChangedDescriptionImplCopyWithImpl(_$ChangedDescriptionImpl _value,
      $Res Function(_$ChangedDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$ChangedDescriptionImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangedDescriptionImpl implements _ChangedDescription {
  const _$ChangedDescriptionImpl({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'ActivityEditEvent.changedDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedDescriptionImplCopyWith<_$ChangedDescriptionImpl> get copyWith =>
      __$$ChangedDescriptionImplCopyWithImpl<_$ChangedDescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List? image) changedImage,
    required TResult Function(String? title) changedTitle,
    required TResult Function(String? description) changedDescription,
    required TResult Function(TimeOfDay? time) changedTime,
  }) {
    return changedDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List? image)? changedImage,
    TResult? Function(String? title)? changedTitle,
    TResult? Function(String? description)? changedDescription,
    TResult? Function(TimeOfDay? time)? changedTime,
  }) {
    return changedDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List? image)? changedImage,
    TResult Function(String? title)? changedTitle,
    TResult Function(String? description)? changedDescription,
    TResult Function(TimeOfDay? time)? changedTime,
    required TResult orElse(),
  }) {
    if (changedDescription != null) {
      return changedDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedImage value) changedImage,
    required TResult Function(_ChangedTitle value) changedTitle,
    required TResult Function(_ChangedDescription value) changedDescription,
    required TResult Function(_ChangedTime value) changedTime,
  }) {
    return changedDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedImage value)? changedImage,
    TResult? Function(_ChangedTitle value)? changedTitle,
    TResult? Function(_ChangedDescription value)? changedDescription,
    TResult? Function(_ChangedTime value)? changedTime,
  }) {
    return changedDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedImage value)? changedImage,
    TResult Function(_ChangedTitle value)? changedTitle,
    TResult Function(_ChangedDescription value)? changedDescription,
    TResult Function(_ChangedTime value)? changedTime,
    required TResult orElse(),
  }) {
    if (changedDescription != null) {
      return changedDescription(this);
    }
    return orElse();
  }
}

abstract class _ChangedDescription implements ActivityEditEvent {
  const factory _ChangedDescription({final String? description}) =
      _$ChangedDescriptionImpl;

  String? get description;
  @JsonKey(ignore: true)
  _$$ChangedDescriptionImplCopyWith<_$ChangedDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedTimeImplCopyWith<$Res> {
  factory _$$ChangedTimeImplCopyWith(
          _$ChangedTimeImpl value, $Res Function(_$ChangedTimeImpl) then) =
      __$$ChangedTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeOfDay? time});
}

/// @nodoc
class __$$ChangedTimeImplCopyWithImpl<$Res>
    extends _$ActivityEditEventCopyWithImpl<$Res, _$ChangedTimeImpl>
    implements _$$ChangedTimeImplCopyWith<$Res> {
  __$$ChangedTimeImplCopyWithImpl(
      _$ChangedTimeImpl _value, $Res Function(_$ChangedTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$ChangedTimeImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc

class _$ChangedTimeImpl implements _ChangedTime {
  const _$ChangedTimeImpl({this.time});

  @override
  final TimeOfDay? time;

  @override
  String toString() {
    return 'ActivityEditEvent.changedTime(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedTimeImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedTimeImplCopyWith<_$ChangedTimeImpl> get copyWith =>
      __$$ChangedTimeImplCopyWithImpl<_$ChangedTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List? image) changedImage,
    required TResult Function(String? title) changedTitle,
    required TResult Function(String? description) changedDescription,
    required TResult Function(TimeOfDay? time) changedTime,
  }) {
    return changedTime(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List? image)? changedImage,
    TResult? Function(String? title)? changedTitle,
    TResult? Function(String? description)? changedDescription,
    TResult? Function(TimeOfDay? time)? changedTime,
  }) {
    return changedTime?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List? image)? changedImage,
    TResult Function(String? title)? changedTitle,
    TResult Function(String? description)? changedDescription,
    TResult Function(TimeOfDay? time)? changedTime,
    required TResult orElse(),
  }) {
    if (changedTime != null) {
      return changedTime(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedImage value) changedImage,
    required TResult Function(_ChangedTitle value) changedTitle,
    required TResult Function(_ChangedDescription value) changedDescription,
    required TResult Function(_ChangedTime value) changedTime,
  }) {
    return changedTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedImage value)? changedImage,
    TResult? Function(_ChangedTitle value)? changedTitle,
    TResult? Function(_ChangedDescription value)? changedDescription,
    TResult? Function(_ChangedTime value)? changedTime,
  }) {
    return changedTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedImage value)? changedImage,
    TResult Function(_ChangedTitle value)? changedTitle,
    TResult Function(_ChangedDescription value)? changedDescription,
    TResult Function(_ChangedTime value)? changedTime,
    required TResult orElse(),
  }) {
    if (changedTime != null) {
      return changedTime(this);
    }
    return orElse();
  }
}

abstract class _ChangedTime implements ActivityEditEvent {
  const factory _ChangedTime({final TimeOfDay? time}) = _$ChangedTimeImpl;

  TimeOfDay? get time;
  @JsonKey(ignore: true)
  _$$ChangedTimeImplCopyWith<_$ChangedTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivityEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActivityModel activity) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActivityModel activity)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActivityModel activity)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Changed value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Changed value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEditStateCopyWith<$Res> {
  factory $ActivityEditStateCopyWith(
          ActivityEditState value, $Res Function(ActivityEditState) then) =
      _$ActivityEditStateCopyWithImpl<$Res, ActivityEditState>;
}

/// @nodoc
class _$ActivityEditStateCopyWithImpl<$Res, $Val extends ActivityEditState>
    implements $ActivityEditStateCopyWith<$Res> {
  _$ActivityEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ActivityEditStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ActivityEditState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActivityModel activity) changed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActivityModel activity)? changed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActivityModel activity)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Changed value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Changed value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ActivityEditState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ActivityEditStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ActivityEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActivityModel activity) changed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActivityModel activity)? changed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActivityModel activity)? changed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Changed value) changed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Changed value)? changed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ActivityEditState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ChangedImplCopyWith<$Res> {
  factory _$$ChangedImplCopyWith(
          _$ChangedImpl value, $Res Function(_$ChangedImpl) then) =
      __$$ChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActivityModel activity});
}

/// @nodoc
class __$$ChangedImplCopyWithImpl<$Res>
    extends _$ActivityEditStateCopyWithImpl<$Res, _$ChangedImpl>
    implements _$$ChangedImplCopyWith<$Res> {
  __$$ChangedImplCopyWithImpl(
      _$ChangedImpl _value, $Res Function(_$ChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
  }) {
    return _then(_$ChangedImpl(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel,
    ));
  }
}

/// @nodoc

class _$ChangedImpl implements _Changed {
  const _$ChangedImpl({required this.activity});

  @override
  final ActivityModel activity;

  @override
  String toString() {
    return 'ActivityEditState.changed(activity: $activity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedImpl &&
            (identical(other.activity, activity) ||
                other.activity == activity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedImplCopyWith<_$ChangedImpl> get copyWith =>
      __$$ChangedImplCopyWithImpl<_$ChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActivityModel activity) changed,
  }) {
    return changed(activity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActivityModel activity)? changed,
  }) {
    return changed?.call(activity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActivityModel activity)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Changed value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Changed value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements ActivityEditState {
  const factory _Changed({required final ActivityModel activity}) =
      _$ChangedImpl;

  ActivityModel get activity;
  @JsonKey(ignore: true)
  _$$ChangedImplCopyWith<_$ChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
