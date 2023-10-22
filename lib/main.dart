import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/application/business_logic/wish_list/wish_list_bloc.dart';
import 'package:jerseyhub/data/services/inventory/inventory.dart';
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
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => WishListBloc(WishListApi()),
        ),
        BlocProvider(
          create: (context) => InventoryBloc(InventoryApi()),
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

// class Solution {
//   int sumOddLengthSubarrays(List<int> arr) {

//   }
// }
