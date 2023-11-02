import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class UserDetailsHolder extends StatelessWidget {
  const UserDetailsHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(const UserEvent.getDetails());
    });
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: kGrey,
      ),
      height: 140,
      child: BlocBuilder<UserBloc, UserState>(
        buildWhen: (previous, current) =>
            previous.userDetail != current.userDetail,
        builder: (context, state) {
          return Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: kBlack,
                child: Text(
                  state.userDetail != null
                      ? state.userDetail!.name!.substring(0, 2).toUpperCase()
                      : 'JE',
                  style: kronOne(
                      fontSize: 0.10,
                      fontWeight: FontWeight.w900,
                      color: kWhite),
                ),
              ),
              kWidth20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.userDetail != null
                        ? state.userDetail!.name!.toUpperCase()
                        : 'NAME',
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(state.userDetail != null
                      ? state.userDetail!.email!
                      : 'email id'),
                  kHeight10,
                  Row(
                    children: [
                      const Text('phone : '),
                      Text(
                        state.userDetail != null
                            ? state.userDetail!.phone!
                            : 'add Number',
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.addressScreen);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                  color: kBlue,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
