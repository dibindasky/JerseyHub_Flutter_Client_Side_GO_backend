import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';

class AddressList extends StatelessWidget {
  const AddressList({
    super.key,
    this.fromCheckout = false,
  });

  final bool fromCheckout;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(UserEvent.getAddress());
    });
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.hasError || state.isDone) {
          showSnack(
            context: context,
            message: state.message!,
            color: state.hasError ? kRed : kGreen,
          );
        }
      },
      buildWhen: (c, p) => c.address != p.address,
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingAnimation(width: 0.20);
        }
        if (state.hasError || state.address == null) {
          return const Text('Nothing to show');
        }
        if (state.address!.isEmpty) {
          return const Text('You havint add address yet');
        }

        return ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final address = state.address![index];
            return ListTile(
              leading: Text('${index + 1},'),
              title: Text(address!.name!),
              subtitle: Text(
                  '${address.houseName!}, ${address.street!},\n${address.city!}, ${address.state},\npin : ${address.pin}\nph : ${address.phone}'),
              onTap: () {
                if (fromCheckout) {
                  context
                      .read<UserBloc>()
                      .add(UserEvent.setDefault(address: address));
                }
              },
            );
          },
          itemCount: state.address!.length,
          separatorBuilder: (context, index) => const Divider(),
        );
      },
    );
  }
}
