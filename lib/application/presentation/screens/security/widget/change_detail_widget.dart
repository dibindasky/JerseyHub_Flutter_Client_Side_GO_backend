import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/validator_functions/validartors.dart';

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
