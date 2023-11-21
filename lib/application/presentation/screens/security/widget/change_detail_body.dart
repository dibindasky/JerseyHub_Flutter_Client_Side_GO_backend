import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/security/widget/change_detail_widget.dart';
import 'package:jerseyhub/application/presentation/screens/security/widget/password_edit.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';

class ChangeDetailBody extends StatelessWidget {
  const ChangeDetailBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.hasError || state.isDone) {
          showSnack(
              context: context,
              message: state.message ?? '',
              color: state.hasError ? kRed : kGreen);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(),
              ChangeDetailWidget(
                  detail: 'Name',
                  controller: context.read<UserBloc>().changeNameController),
              ChangeDetailWidget(
                  detail: 'Email',
                  controller: context.read<UserBloc>().changeEmailController),
              ChangeDetailWidget(
                  detail: 'Phone',
                  controller: context.read<UserBloc>().changePhoneController),
              Column(
                children: [
                  const Text('Change Password'),
                  PasswordEditWidget(
                      text: 'Password',
                      controller: context.read<UserBloc>().passwordController),
                  kHeight10,
                  PasswordEditWidget(
                      text: 'New password',
                      controller:
                          context.read<UserBloc>().newPasswordController),
                  kHeight10,
                  PasswordEditWidget(
                      text: 'Confirm password',
                      controller:
                          context.read<UserBloc>().confirmPasswordController),
                  kHeight10,
                  Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: elevatedButtonStyleBlack,
                        child: const Text('Change Passsword'),
                      )),
                  const Divider()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
