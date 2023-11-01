// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InventoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInventories,
    required TResult Function() nextPage,
    required TResult Function(int id) getInventoryDetails,
    required TResult Function(SearchModel searchModel) searchInventories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInventories,
    TResult? Function()? nextPage,
    TResult? Function(int id)? getInventoryDetails,
    TResult? Function(SearchModel searchModel)? searchInventories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInventories,
    TResult Function()? nextPage,
    TResult Function(int id)? getInventoryDetails,
    TResult Function(SearchModel searchModel)? searchInventories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInventories value) getInventories,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_GetInventoryDetails value) getInventoryDetails,
    required TResult Function(_SearchInventories value) searchInventories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInventories value)? getInventories,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult? Function(_SearchInventories value)? searchInventories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInventories value)? getInventories,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult Function(_SearchInventories value)? searchInventories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryEventCopyWith<$Res> {
  factory $InventoryEventCopyWith(
          InventoryEvent value, $Res Function(InventoryEvent) then) =
      _$InventoryEventCopyWithImpl<$Res, InventoryEvent>;
}

/// @nodoc
class _$InventoryEventCopyWithImpl<$Res, $Val extends InventoryEvent>
    implements $InventoryEventCopyWith<$Res> {
  _$InventoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetInventoriesCopyWith<$Res> {
  factory _$$_GetInventoriesCopyWith(
          _$_GetInventories value, $Res Function(_$_GetInventories) then) =
      __$$_GetInventoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetInventoriesCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$_GetInventories>
    implements _$$_GetInventoriesCopyWith<$Res> {
  __$$_GetInventoriesCopyWithImpl(
      _$_GetInventories _value, $Res Function(_$_GetInventories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetInventories implements _GetInventories {
  const _$_GetInventories();

  @override
  String toString() {
    return 'InventoryEvent.getInventories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetInventories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInventories,
    required TResult Function() nextPage,
    required TResult Function(int id) getInventoryDetails,
    required TResult Function(SearchModel searchModel) searchInventories,
  }) {
    return getInventories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInventories,
    TResult? Function()? nextPage,
    TResult? Function(int id)? getInventoryDetails,
    TResult? Function(SearchModel searchModel)? searchInventories,
  }) {
    return getInventories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInventories,
    TResult Function()? nextPage,
    TResult Function(int id)? getInventoryDetails,
    TResult Function(SearchModel searchModel)? searchInventories,
    required TResult orElse(),
  }) {
    if (getInventories != null) {
      return getInventories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInventories value) getInventories,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_GetInventoryDetails value) getInventoryDetails,
    required TResult Function(_SearchInventories value) searchInventories,
  }) {
    return getInventories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInventories value)? getInventories,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult? Function(_SearchInventories value)? searchInventories,
  }) {
    return getInventories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInventories value)? getInventories,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult Function(_SearchInventories value)? searchInventories,
    required TResult orElse(),
  }) {
    if (getInventories != null) {
      return getInventories(this);
    }
    return orElse();
  }
}

abstract class _GetInventories implements InventoryEvent {
  const factory _GetInventories() = _$_GetInventories;
}

/// @nodoc
abstract class _$$_NextPageCopyWith<$Res> {
  factory _$$_NextPageCopyWith(
          _$_NextPage value, $Res Function(_$_NextPage) then) =
      __$$_NextPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$_NextPage>
    implements _$$_NextPageCopyWith<$Res> {
  __$$_NextPageCopyWithImpl(
      _$_NextPage _value, $Res Function(_$_NextPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPage implements _NextPage {
  const _$_NextPage();

  @override
  String toString() {
    return 'InventoryEvent.nextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInventories,
    required TResult Function() nextPage,
    required TResult Function(int id) getInventoryDetails,
    required TResult Function(SearchModel searchModel) searchInventories,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInventories,
    TResult? Function()? nextPage,
    TResult? Function(int id)? getInventoryDetails,
    TResult? Function(SearchModel searchModel)? searchInventories,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInventories,
    TResult Function()? nextPage,
    TResult Function(int id)? getInventoryDetails,
    TResult Function(SearchModel searchModel)? searchInventories,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInventories value) getInventories,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_GetInventoryDetails value) getInventoryDetails,
    required TResult Function(_SearchInventories value) searchInventories,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInventories value)? getInventories,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult? Function(_SearchInventories value)? searchInventories,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInventories value)? getInventories,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult Function(_SearchInventories value)? searchInventories,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements InventoryEvent {
  const factory _NextPage() = _$_NextPage;
}

/// @nodoc
abstract class _$$_GetInventoryDetailsCopyWith<$Res> {
  factory _$$_GetInventoryDetailsCopyWith(_$_GetInventoryDetails value,
          $Res Function(_$_GetInventoryDetails) then) =
      __$$_GetInventoryDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GetInventoryDetailsCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$_GetInventoryDetails>
    implements _$$_GetInventoryDetailsCopyWith<$Res> {
  __$$_GetInventoryDetailsCopyWithImpl(_$_GetInventoryDetails _value,
      $Res Function(_$_GetInventoryDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetInventoryDetails(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetInventoryDetails implements _GetInventoryDetails {
  const _$_GetInventoryDetails({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'InventoryEvent.getInventoryDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetInventoryDetails &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetInventoryDetailsCopyWith<_$_GetInventoryDetails> get copyWith =>
      __$$_GetInventoryDetailsCopyWithImpl<_$_GetInventoryDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInventories,
    required TResult Function() nextPage,
    required TResult Function(int id) getInventoryDetails,
    required TResult Function(SearchModel searchModel) searchInventories,
  }) {
    return getInventoryDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInventories,
    TResult? Function()? nextPage,
    TResult? Function(int id)? getInventoryDetails,
    TResult? Function(SearchModel searchModel)? searchInventories,
  }) {
    return getInventoryDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInventories,
    TResult Function()? nextPage,
    TResult Function(int id)? getInventoryDetails,
    TResult Function(SearchModel searchModel)? searchInventories,
    required TResult orElse(),
  }) {
    if (getInventoryDetails != null) {
      return getInventoryDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInventories value) getInventories,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_GetInventoryDetails value) getInventoryDetails,
    required TResult Function(_SearchInventories value) searchInventories,
  }) {
    return getInventoryDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInventories value)? getInventories,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult? Function(_SearchInventories value)? searchInventories,
  }) {
    return getInventoryDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInventories value)? getInventories,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult Function(_SearchInventories value)? searchInventories,
    required TResult orElse(),
  }) {
    if (getInventoryDetails != null) {
      return getInventoryDetails(this);
    }
    return orElse();
  }
}

abstract class _GetInventoryDetails implements InventoryEvent {
  const factory _GetInventoryDetails({required final int id}) =
      _$_GetInventoryDetails;

  int get id;
  @JsonKey(ignore: true)
  _$$_GetInventoryDetailsCopyWith<_$_GetInventoryDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchInventoriesCopyWith<$Res> {
  factory _$$_SearchInventoriesCopyWith(_$_SearchInventories value,
          $Res Function(_$_SearchInventories) then) =
      __$$_SearchInventoriesCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchModel searchModel});
}

/// @nodoc
class __$$_SearchInventoriesCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$_SearchInventories>
    implements _$$_SearchInventoriesCopyWith<$Res> {
  __$$_SearchInventoriesCopyWithImpl(
      _$_SearchInventories _value, $Res Function(_$_SearchInventories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchModel = null,
  }) {
    return _then(_$_SearchInventories(
      searchModel: null == searchModel
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as SearchModel,
    ));
  }
}

/// @nodoc

class _$_SearchInventories implements _SearchInventories {
  const _$_SearchInventories({required this.searchModel});

  @override
  final SearchModel searchModel;

  @override
  String toString() {
    return 'InventoryEvent.searchInventories(searchModel: $searchModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchInventories &&
            (identical(other.searchModel, searchModel) ||
                other.searchModel == searchModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchInventoriesCopyWith<_$_SearchInventories> get copyWith =>
      __$$_SearchInventoriesCopyWithImpl<_$_SearchInventories>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInventories,
    required TResult Function() nextPage,
    required TResult Function(int id) getInventoryDetails,
    required TResult Function(SearchModel searchModel) searchInventories,
  }) {
    return searchInventories(searchModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInventories,
    TResult? Function()? nextPage,
    TResult? Function(int id)? getInventoryDetails,
    TResult? Function(SearchModel searchModel)? searchInventories,
  }) {
    return searchInventories?.call(searchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInventories,
    TResult Function()? nextPage,
    TResult Function(int id)? getInventoryDetails,
    TResult Function(SearchModel searchModel)? searchInventories,
    required TResult orElse(),
  }) {
    if (searchInventories != null) {
      return searchInventories(searchModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInventories value) getInventories,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_GetInventoryDetails value) getInventoryDetails,
    required TResult Function(_SearchInventories value) searchInventories,
  }) {
    return searchInventories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInventories value)? getInventories,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult? Function(_SearchInventories value)? searchInventories,
  }) {
    return searchInventories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInventories value)? getInventories,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_GetInventoryDetails value)? getInventoryDetails,
    TResult Function(_SearchInventories value)? searchInventories,
    required TResult orElse(),
  }) {
    if (searchInventories != null) {
      return searchInventories(this);
    }
    return orElse();
  }
}

abstract class _SearchInventories implements InventoryEvent {
  const factory _SearchInventories({required final SearchModel searchModel}) =
      _$_SearchInventories;

  SearchModel get searchModel;
  @JsonKey(ignore: true)
  _$$_SearchInventoriesCopyWith<_$_SearchInventories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InventoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetIndividualInventoryResponse? get getIndividualInventoryResponse =>
      throw _privateConstructorUsedError;
  List<Inventory>? get inventories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryStateCopyWith<InventoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryStateCopyWith<$Res> {
  factory $InventoryStateCopyWith(
          InventoryState value, $Res Function(InventoryState) then) =
      _$InventoryStateCopyWithImpl<$Res, InventoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      GetIndividualInventoryResponse? getIndividualInventoryResponse,
      List<Inventory>? inventories});
}

/// @nodoc
class _$InventoryStateCopyWithImpl<$Res, $Val extends InventoryState>
    implements $InventoryStateCopyWith<$Res> {
  _$InventoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? getIndividualInventoryResponse = freezed,
    Object? inventories = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getIndividualInventoryResponse: freezed == getIndividualInventoryResponse
          ? _value.getIndividualInventoryResponse
          : getIndividualInventoryResponse // ignore: cast_nullable_to_non_nullable
              as GetIndividualInventoryResponse?,
      inventories: freezed == inventories
          ? _value.inventories
          : inventories // ignore: cast_nullable_to_non_nullable
              as List<Inventory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $InventoryStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      GetIndividualInventoryResponse? getIndividualInventoryResponse,
      List<Inventory>? inventories});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$InventoryStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? getIndividualInventoryResponse = freezed,
    Object? inventories = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getIndividualInventoryResponse: freezed == getIndividualInventoryResponse
          ? _value.getIndividualInventoryResponse
          : getIndividualInventoryResponse // ignore: cast_nullable_to_non_nullable
              as GetIndividualInventoryResponse?,
      inventories: freezed == inventories
          ? _value._inventories
          : inventories // ignore: cast_nullable_to_non_nullable
              as List<Inventory>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.getIndividualInventoryResponse,
      final List<Inventory>? inventories})
      : _inventories = inventories;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final GetIndividualInventoryResponse? getIndividualInventoryResponse;
  final List<Inventory>? _inventories;
  @override
  List<Inventory>? get inventories {
    final value = _inventories;
    if (value == null) return null;
    if (_inventories is EqualUnmodifiableListView) return _inventories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InventoryState(isLoading: $isLoading, hasError: $hasError, message: $message, getIndividualInventoryResponse: $getIndividualInventoryResponse, inventories: $inventories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getIndividualInventoryResponse,
                    getIndividualInventoryResponse) ||
                other.getIndividualInventoryResponse ==
                    getIndividualInventoryResponse) &&
            const DeepCollectionEquality()
                .equals(other._inventories, _inventories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      getIndividualInventoryResponse,
      const DeepCollectionEquality().hash(_inventories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements InventoryState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final GetIndividualInventoryResponse? getIndividualInventoryResponse,
      final List<Inventory>? inventories}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  GetIndividualInventoryResponse? get getIndividualInventoryResponse;
  @override
  List<Inventory>? get inventories;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
