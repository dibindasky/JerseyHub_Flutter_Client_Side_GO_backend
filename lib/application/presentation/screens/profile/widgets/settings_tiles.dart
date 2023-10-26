import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Orders'),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
          onTap: () {
            Navigator.pushNamed(context, Routes.orderScreen);
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Security'),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
          onTap: () {
            Navigator.pushNamed(context, Routes.userDetailScreen);
          },
        ),
        const Divider(),
        const ListTile(
          title: Text('Share'),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Logout'),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
          onTap: () {
            context.read<AuthBloc>().add(const AuthEvent.signOut());
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.signInPage, (route) => false);
          },
        ),
        const Divider(),
      ],
    );
  }
}
