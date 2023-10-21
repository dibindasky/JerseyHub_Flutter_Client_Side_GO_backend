import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight30,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            color: kGrey,
          ),
          height: 140,
          child: Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: kBlack,
                child: Text(
                  'NA',
                  style: kronOne(
                      fontSize: 0.10,
                      fontWeight: FontWeight.w900,
                      color: kWhite),
                ),
              ),
              kWidth20,
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NAME',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text('House Name'),
                  Text('Sub District, District, State'),
                  // Text('State'),
                  kHeight10,
                  Row(
                    children: [
                      Text('phone : '),
                      Text(
                        '0987654321',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
                color: kBlue,
              )
            ],
          ),
        ),
        kHeight10,
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
        const ListTile(
          title: Text('Security'),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
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
