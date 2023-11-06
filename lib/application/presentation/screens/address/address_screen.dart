import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/address/widget/address_custom_textfield.dart';
import 'package:jerseyhub/application/presentation/screens/address/widget/address_list.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';
import 'package:jerseyhub/domain/models/user/address/add_address_model/add_address_model.dart';

final GlobalKey<FormState> addressKey = GlobalKey<FormState>();

class ScreenAddress extends StatelessWidget {
  const ScreenAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appbarMaker(title: 'Add Address'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: addressKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                DetailAdderTextField(
                    text: 'Name',
                    keyboardType: TextInputType.name,
                    controller: context.read<UserBloc>().nameController),
                DetailAdderTextField(
                    text: 'House',
                    controller: context.read<UserBloc>().houseController),
                DetailAdderTextField(
                    text: 'Street',
                    controller: context.read<UserBloc>().streetController),
                DetailAdderTextField(
                    text: 'City',
                    controller: context.read<UserBloc>().cityController),
                DetailAdderTextField(
                    text: 'State',
                    keyboardType: TextInputType.name,
                    controller: context.read<UserBloc>().stateController),
                DetailAdderTextField(
                    text: 'Phone',
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    controller: context.read<UserBloc>().phoneController),
                DetailAdderTextField(
                    text: 'Pin',
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                    controller: context.read<UserBloc>().pinController),
                kHeight10,
                ElevatedButton(
                  onPressed: () {
                    if (addressKey.currentState!.validate()) {
                      final model = AddAddressModel(
                          city: context
                              .read<UserBloc>()
                              .cityController
                              .text
                              .trim(),
                          houseName: context
                              .read<UserBloc>()
                              .houseController
                              .text
                              .trim(),
                          name: context
                              .read<UserBloc>()
                              .nameController
                              .text
                              .trim(),
                          pin: context
                              .read<UserBloc>()
                              .pinController
                              .text
                              .trim(),
                          state: context
                              .read<UserBloc>()
                              .stateController
                              .text
                              .trim(),
                          street: context
                              .read<UserBloc>()
                              .streetController
                              .text
                              .trim(),
                          phone: context
                              .read<UserBloc>()
                              .phoneController
                              .text
                              .trim());
                      context
                          .read<UserBloc>()
                          .add(UserEvent.addAddress(addAddressModel: model));
                    }
                  },
                  style: elevatedButtonStyleBlack,
                  child: const Text('Add Address'),
                ),
                const Divider(),
                const AddressList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
