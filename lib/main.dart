import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/business_logic/home/home_bloc.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/business_logic/wish_list/wish_list_bloc.dart';
import 'package:jerseyhub/data/services/auth/auth.dart';
import 'package:jerseyhub/data/services/cart/cart.dart';
import 'package:jerseyhub/data/services/home/home.dart';
import 'package:jerseyhub/data/services/inventory/inventory.dart';
import 'package:jerseyhub/data/services/order/order.dart';
import 'package:jerseyhub/data/services/user/user.dart';
import 'package:jerseyhub/data/services/wish_list/wish_list.dart';

import 'application/presentation/routes/routes.dart';
import 'application/presentation/routes/routes_generator.dart';

void main() {
  runApp(JerseyHubUser());
}

class JerseyHubUser extends StatelessWidget {
  JerseyHubUser({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomBarCubitCubit(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(AuthApi()),
        ),
        BlocProvider(
          create: (context) => WishListBloc(WishListApi()),
        ),
        BlocProvider(
          create: (context) => InventoryBloc(InventoryApi()),
        ),
        BlocProvider(
          create: (context) => UserBloc(UserApi()),
        ),
        BlocProvider(
          create: (context) => CartBloc(CartApi()),
        ),
        BlocProvider(
          create: (context) => OrderBloc(OrderApi()),
        ),
        BlocProvider(
          create: (context) => HomeBloc(HomeApi()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            primarySwatch: Colors.blue),
        initialRoute: Routes.initial,
        onGenerateRoute: routeGenerator.onGenerateRoute,
      ),
    );
  }
}
