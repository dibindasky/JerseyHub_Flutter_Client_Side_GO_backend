import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/validator_functions/validartors.dart';
import 'package:jerseyhub/domain/models/user/details/change_email/change_email.dart';
import 'package:jerseyhub/domain/models/user/details/change_name/change_name.dart';
import 'package:jerseyhub/domain/models/user/details/change_phone_number/change_phone_number.dart';

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
              onPressed: () {
                if (detail == 'Name') {
                  context.read<UserBloc>().add(UserEvent.changeName(
                      changeName: ChangeName(
                          name: context
                              .read<UserBloc>()
                              .changeNameController
                              .text
                              .trim())));
                } else if (detail == 'Email') {
                  context.read<UserBloc>().add(UserEvent.changeEmail(
                      changeEmail: ChangeEmail(
                          email: context
                              .read<UserBloc>()
                              .changeEmailController
                              .text
                              .trim())));
                } else if (detail == 'Phone') {
                  context.read<UserBloc>().add(UserEvent.changePhone(
                      changePhone: ChangePhoneNumber(
                          phone: context
                              .read<UserBloc>()
                              .changePhoneController
                              .text
                              .trim())));
                }
              },
              style: elevatedButtonStyleBlack,
              child: Text('Change $detail'),
            )),
        const Divider()
      ],
    );
  }
}
