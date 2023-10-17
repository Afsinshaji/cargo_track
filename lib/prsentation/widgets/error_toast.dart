import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

errorToastMessage() {
  Fluttertoast.showToast(
    msg: 'Something Went Wrong!',
    toastLength: Toast.LENGTH_LONG,
    backgroundColor: Colors.red,
    textColor: kWhiteColor,
    fontSize: 22,
  );
}
