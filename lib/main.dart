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
import 'package:jerseyhub/domain/core/di/dipendency_injection.dart';

import 'application/presentation/routes/routes.dart';
import 'application/presentation/routes/routes_generator.dart';

Future<void> main() async{
  await configuteInjection();
  runApp(JerseyHubUser());
}

class JerseyHubUser extends StatelessWidget {
  JerseyHubUser({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomBarCubitCubit()),
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<WishListBloc>()),
        BlocProvider(create: (context) => getIt<InventoryBloc>()),
        BlocProvider(create: (context) => getIt<UserBloc>()),
        BlocProvider(create: (context) => getIt<CartBloc>()),
        BlocProvider(create: (context) => getIt<OrderBloc>()),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
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
