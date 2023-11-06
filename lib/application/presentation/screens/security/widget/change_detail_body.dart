import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/security/widget/change_detail_widget.dart';
import 'package:jerseyhub/application/presentation/screens/security/widget/password_edit.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ChangeDetailBody extends StatelessWidget {
  const ChangeDetailBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    controller: context.read<UserBloc>().newPasswordController),
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
    );
  }
}
