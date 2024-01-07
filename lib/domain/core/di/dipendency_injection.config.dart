// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart'
    as _i17;
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart'
    as _i18;
import 'package:jerseyhub/application/business_logic/home/home_bloc.dart'
    as _i19;
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart'
    as _i20;
import 'package:jerseyhub/application/business_logic/order/order_bloc.dart'
    as _i21;
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart'
    as _i22;
import 'package:jerseyhub/application/business_logic/wish_list/wish_list_bloc.dart'
    as _i23;
import 'package:jerseyhub/data/services/auth/auth.dart' as _i4;
import 'package:jerseyhub/data/services/cart/cart.dart' as _i6;
import 'package:jerseyhub/data/services/home/home.dart' as _i8;
import 'package:jerseyhub/data/services/inventory/inventory.dart' as _i10;
import 'package:jerseyhub/data/services/order/order.dart' as _i12;
import 'package:jerseyhub/data/services/user/user.dart' as _i14;
import 'package:jerseyhub/data/services/wish_list/wish_list.dart' as _i16;
import 'package:jerseyhub/domain/repositories/auth_repository.dart' as _i3;
import 'package:jerseyhub/domain/repositories/cart_repository.dart' as _i5;
import 'package:jerseyhub/domain/repositories/home_repository.dart' as _i7;
import 'package:jerseyhub/domain/repositories/inventory_repository.dart' as _i9;
import 'package:jerseyhub/domain/repositories/order_repository.dart' as _i11;
import 'package:jerseyhub/domain/repositories/user_repository.dart' as _i13;
import 'package:jerseyhub/domain/repositories/wish_list_repository.dart'
    as _i15;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthRepository>(() => _i4.AuthApi());
    gh.lazySingleton<_i5.CartRepository>(() => _i6.CartApi());
    gh.lazySingleton<_i7.HomeRepository>(() => _i8.HomeApi());
    gh.lazySingleton<_i9.InventoryRepository>(() => _i10.InventoryApi());
    gh.lazySingleton<_i11.OrderRepository>(() => _i12.OrderApi());
    gh.lazySingleton<_i13.UserRepository>(() => _i14.UserApi());
    gh.lazySingleton<_i15.WishListRepository>(() => _i16.WishListApi());
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(gh<_i3.AuthRepository>()));
    gh.factory<_i18.CartBloc>(() => _i18.CartBloc(gh<_i5.CartRepository>()));
    gh.factory<_i19.HomeBloc>(() => _i19.HomeBloc(gh<_i7.HomeRepository>()));
    gh.factory<_i20.InventoryBloc>(
        () => _i20.InventoryBloc(gh<_i9.InventoryRepository>()));
    gh.factory<_i21.OrderBloc>(
        () => _i21.OrderBloc(gh<_i11.OrderRepository>()));
    gh.factory<_i22.UserBloc>(() => _i22.UserBloc(gh<_i13.UserRepository>()));
    gh.factory<_i23.WishListBloc>(
        () => _i23.WishListBloc(gh<_i15.WishListRepository>()));
    return this;
  }
}
