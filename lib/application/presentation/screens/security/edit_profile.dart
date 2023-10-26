import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/validator_functions/validartors.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenEditProfile extends StatelessWidget {
  const ScreenEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'Security'),
      body: Padding(
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

class PasswordEditWidget extends StatelessWidget {
  const PasswordEditWidget({
    super.key,
    required this.text,
    required this.controller,
  });

  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    bool isObscure = true;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: sWidth * 0.30,
          height: sWidth * 0.08,
          decoration: const BoxDecoration(
              color: kBlack, borderRadius: BorderRadius.all(kRadius5)),
          child: Center(
            child: Text(
              text,
              style: kronOne(color: kWhite),
            ),
          ),
        ),
        kWidth10,
        Container(
          height: sWidth * 0.08,
          width: sWidth * 0.55,
          decoration: const BoxDecoration(
              color: kGrey, borderRadius: BorderRadius.all(kRadius5)),
          child: TextFormField(
            obscureText: isObscure,
            controller: TextEditingController(),
            onTap: () {
              isObscure = false;
            },
            onTapOutside: (_) {
              isObscure = true;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'fill this field';
              } else if (value.length < 8) {
                return 'password should contain at least 8 letters';
              } else {
                return null;
              }
            },
          ),
        )
      ],
    );
  }
}

class ChangeDetailWidget extends StatelessWidget {
  const ChangeDetailWidget({
    super.key,
    required this.detail,
    required this.controller,
  });

  final String detail;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Change $detail'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: sWidth * 0.20,
              height: sWidth * 0.08,
              decoration: const BoxDecoration(
                  color: kBlack, borderRadius: BorderRadius.all(kRadius5)),
              child: Center(
                child: Text(
                  detail,
                  style: kronOne(color: kWhite),
                ),
              ),
            ),
            kWidth10,
            Container(
              height: sWidth * 0.08,
              width: sWidth * 0.65,
              decoration: const BoxDecoration(
                  color: kGrey, borderRadius: BorderRadius.all(kRadius5)),
              child: TextFormField(
                controller: controller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter $detail';
                  } else if (controller ==
                          context.read<UserBloc>().changeEmailController &&
                      isValidEmail(value)) {
                    return 'enter valid email';
                  } else if (controller ==
                          context.read<UserBloc>().changeNameController &&
                      isAlphabet(value)) {
                    return 'enter valid name';
                  } else if (controller ==
                          context.read<UserBloc>().changePhoneController &&
                      isValidPhoneNumber(value)) {
                    return 'enter valid phone';
                  } else {
                    return null;
                  }
                },
              ),
            )
          ],
        ),
        Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {},
              style: elevatedButtonStyleBlack,
              child: Text('Change $detail'),
            )),
        const Divider()
      ],
    );
  }
}
