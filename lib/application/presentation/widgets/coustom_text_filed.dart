import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/validator_functions/validartors.dart';

import '../utils/colors.dart';
import '../utils/constant.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField(
      {super.key,
      this.isPassword = false,
      required this.label,
      required this.controller,
      this.keyboardType = TextInputType.text});

  final String label;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: kronOne(color: kWhite, fontSize: 0.03),
        ),
        Container(
          height: 40,
          decoration: const BoxDecoration(
              color: kWhite, borderRadius: BorderRadius.all(kRadius5)),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter value';
                  }
                  if (keyboardType == TextInputType.number &&
                      value.length != 10) {
                    return 'enter valid phone number';
                  } else if (isPassword && value.length < 8) {
                    return 'password must contains atleast 8 charactors';
                  } else if (isPassword &&
                      context
                              .read<AuthBloc>()
                              .passwordController
                              .text
                              .trim()
                              .length >
                          7 &&
                      context.read<AuthBloc>().passwordController.text.trim() !=
                          context
                              .read<AuthBloc>()
                              .confirmPasswordController
                              .text
                              .trim()) {
                    return 'password dosen\'t match';
                  } else if (keyboardType == TextInputType.emailAddress &&
                      !isValidEmail(value)) {
                    return 'enter proper email address';
                  }
                  return null;
                },
                style: kronOne(),
                controller: controller,
                obscureText: isPassword ? state.isObscure : false,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  errorStyle: const TextStyle(fontSize: 0),
                  enabledBorder: InputBorder.none,
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.red)),
                  focusedErrorBorder:  const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  prefixText:
                      keyboardType == TextInputType.number ? '+91 - ' : null,
                  suffix: isPassword
                      ? IconButton(
                          icon: Icon(
                            state.isObscure
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                            color: kBlack,
                          ),
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.obscure());
                          },
                        )
                      : null,
                  hintStyle: kronOne(color: kBlack, fontSize: 0.03),
                  border: const OutlineInputBorder(),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  fillColor: kWhite,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
