// SubView

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:all_sensors2/all_sensors2.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:final_assignment/core/common/my_snackbar.dart';
import 'package:final_assignment/features/profile/presentation/viewmodel/profile_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuView extends ConsumerStatefulWidget {
  const MenuView({super.key});

   @override
  ConsumerState<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends ConsumerState<MenuView> {

 // ------ GYROSCOPE CODE ------

  bool showYesNoDialog = true;
  bool isDialogShowing = false;

  List<double> _gyroscopeValues = [];
  final List<StreamSubscription<dynamic>> _streamSubscription = [];

  @override
  void initState() {
    _streamSubscription.add(gyroscopeEvents!.listen((GyroscopeEvent event) {
      setState(() {
        _gyroscopeValues = <double>[event.x, event.y, event.z];

        _checkGyroscopeValues(_gyroscopeValues);
      });
    }));

    super.initState();
  }

  void _checkGyroscopeValues(List<double> values) async {
    const double threshold = 3; // Example threshold value, adjust as needed
    if (values.any((value) => value.abs() > threshold)) {
      if (showYesNoDialog && !isDialogShowing) {
        isDialogShowing = true;
        final result = await AwesomeDialog(
          context: context,
          dialogType: DialogType.warning,
          title: 'Logout',
          desc: 'Are You Sure You Want To Logout?',
          btnOkOnPress: () {
            ref.read(profileViewmodelProvider.notifier).logout();
          },
          btnCancelOnPress: () {},
        ).show();

        isDialogShowing = false;
        if (result) {
          showMySnackBar(
            message: 'Logged Out Successfully!',
            color: Colors.green,
          );
        }
      }
    }
  }

  //-----gyroscope code ends here-----

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child: Center(
        child: Text('Menu View'),
      ),
    );
  }
}
